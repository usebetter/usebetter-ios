//
//  SceneDelegate.swift
//  usebetter
//
//  Created by Prashanth Jaligama on 3/7/23.
//

import Foundation
import SwiftUI

@available(iOS 13.0, *)
class UBSceneDelegate: NSObject, UIWindowSceneDelegate {
    func scene(_ scene: UIScene, willConnectTo
               session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions)
    {
        logger.log("[UBSceneDelegate] scene: willConnectTo universal link launched app")
        // Get URL components from the incoming user activity.
        guard let userActivity = connectionOptions.userActivities.first,
              userActivity.activityType == NSUserActivityTypeBrowsingWeb,
              let incomingURL = userActivity.webpageURL,
              let components = NSURLComponents(url: incomingURL, resolvingAgainstBaseURL: true) else {
            logger.log("[UBSceneDelegate] scene: willConnectTo userActivity: ")
            return
        }
        
        // Check for specific URL components that you need.
        guard let path = components.path,
              let params = components.queryItems else {
            logger.log("[UBSceneDelegate] scene: willConnectTo empty path")
            return
        }
        logger.log("[UBSceneDelegate] scene: willConnectTo path = \(path) params = \(params)")
        
        if let idParam = params.first(where: { $0.name == "Id" }) {
            guard let friendId = idParam.value else {
                logger.log("[UBSceneDelegate] scene: willConnectTo invalid Friend Id")
                return
            }
            
            logger.log("[UBSceneDelegate] scene: willConnectTo friendId = \(friendId)")
            let nc = NotificationCenter.default
            nc.post(name: Notification.Name(UBNotificationName.showSettingsTab), object: nil)
            nc.post(name: Notification.Name(UBNotificationName.addFriend), object: friendId)
        } else {
            logger.log("[UBSceneDelegate] scene: willConnectTo Either Id or its value is missing")
        }
    }
    
    func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>) {
        logger.log("[UBSceneDelegate] scene: openURLContexts universal link launched app")
    }
    
    func scene(_ scene: UIScene, continue userActivity: NSUserActivity) {
        logger.log("[UBSceneDelegate] scene: continue universal link launched app")
    }
}

