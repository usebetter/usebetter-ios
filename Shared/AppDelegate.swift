//
//  AppDelegate.swift
//  usebetter
//
//  Created by Prashanth Jaligama on 5/21/22.
//

import Foundation
import Amplify
import AWSCognitoAuthPlugin
import SwiftUI
import AWSAPIPlugin
import AWSS3StoragePlugin

import Firebase
import FirebaseMessaging
import UserNotifications
import GoogleSignIn

class AppDelegate: NSObject, UIApplicationDelegate, MessagingDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        logger.log("[AppDelegate] UseBetter Logging initialized")
        do {
            Amplify.Logging.logLevel = .verbose
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            try Amplify.add(plugin: AWSS3StoragePlugin())
            try Amplify.add(plugin: AWSAPIPlugin())
            try Amplify.configure()
            logger.log("[AppDelegate] Amplify configured with auth plugin")
        } catch {
            logger.log("[AppDelegate] Failed to initialize Amplify with \(error)")
        }
        
        FirebaseApp.configure()
        
        Messaging.messaging().delegate = self
        
        GIDSignIn.sharedInstance.restorePreviousSignIn { user, error in
            if error != nil || user == nil {
                logger.log("[AppDelegate] user is Nil error \(error)")
            } else {
              // Show the app's signed-in state.
                logger.log("[AppDelegate] user is Signed in")
            }
          }
        
        UIApplication.shared.registerForRemoteNotifications()
        
        return true
    }
    
    func messaging(_ messaging: Messaging, didReceiveRegistrationToken fcmToken: String?) {
        messaging.token { token, _ in
            guard let token = token else {
                return
            }
            logger.log("[AppDelegate] messaging:didReceiveRegistrationToken token is \(token)")
            #if !targetEnvironment(simulator)
                AppUserDefaults.shared.fcmToken = token
                logger.log("[AppDelegate] messaging storing FCM token only for real devive")
            #else
                logger.log("[AppDelegate] messaging skipping FCM token storing for simulators")
            #endif
            
        }
    }
    
    func application(_ application: UIApplication,
                     didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        let stringToken = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
        
        logger.log("[AppDelegate] didRegisterForRemoteNotificationsWithDeviceToken APNS device Token is: \(stringToken)")
        Messaging.messaging().apnsToken = deviceToken
        AppUserDefaults.shared.apnsToken = stringToken
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
      var handled: Bool

      handled = GIDSignIn.sharedInstance.handle(url)
      if handled {
        return true
      }

      // Handle other custom URL types.
        // Determine who sent the URL.
        let sendingAppID = options[.sourceApplication]
        print("source application = \(sendingAppID ?? "Unknown")")

        // Process the URL.
        guard let components = NSURLComponents(url: url, resolvingAgainstBaseURL: true),
            let albumPath = components.path,
            let params = components.queryItems else {
                print("Invalid URL or album path missing")
                return false
        }

        if let photoIndex = params.first(where: { $0.name == "index" })?.value {
            print("albumPath = \(albumPath)")
            print("photoIndex = \(photoIndex)")
            return true
        } else {
            print("Photo index missing")
            return false
        }
    }
    
    func application(_ application: UIApplication,
                     continue userActivity: NSUserActivity,
                     restorationHandler: @escaping ([UIUserActivityRestoring]?) -> Void) -> Bool
    {
        logger.log("application universal link launched app")
        // Get URL components from the incoming user activity.
        guard userActivity.activityType == NSUserActivityTypeBrowsingWeb,
            let incomingURL = userActivity.webpageURL,
            let components = NSURLComponents(url: incomingURL, resolvingAgainstBaseURL: true) else {
            return false
        }

        // Check for specific URL components that you need.
        guard let path = components.path,
        let params = components.queryItems else {
            return false
        }
        logger.log("path = \(path)")

        if let friends = params.first(where: { $0.name == "friends" } )?.value{

            logger.log("album = \(friends)")
            return true

        } else {
            logger.log("Either album name or photo index missing")
            return false
        }
    }
    
    func application(
        _ application: UIApplication,
        configurationForConnecting connectingSceneSession: UISceneSession,
        options: UIScene.ConnectionOptions
    ) -> UISceneConfiguration {
        let sceneConfig = UISceneConfiguration(name: nil, sessionRole: connectingSceneSession.role)
        sceneConfig.delegateClass = UBSceneDelegate.self
        return sceneConfig
    }
}
