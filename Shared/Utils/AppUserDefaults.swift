//
//  AppUserDefaults.swift
//  usebetter (iOS)
//
//  Created by Prashanth Jaligama on 2/20/23.
//

import Foundation
import Combine

class AppUserDefaults {
    static let shared = AppUserDefaults()
    let userAttributeChanged = PassthroughSubject<Bool, Never>()
    private struct Constants {
        static let firstName = "firstName"
        static let lastName = "lastName"
        static let emailId = "emailId"
        static let displayName = "displayName"
        static let fcmToken = "fcmToken"
        static let apnsToken = "apnsToken"
        static let friendsList = "friendsList"
        
    }
    
    private init() {
    }
    
    private func set(attributeName: String, _ newValue: String ) {
        let userDefaults = UserDefaults.standard
        let storedValue = userDefaults.string(forKey: attributeName)
        
        if storedValue != newValue {
            userDefaults.set(newValue, forKey: attributeName)
            logger.log("[AppUserDefaults] set \(attributeName) changed or nil. storing in user defaults \(newValue)")
            userAttributeChanged.send(true)
        }
        logger.log("[AppUserDefaults] set stored \(attributeName) value is: \(storedValue ?? "")")
    }
    
    private func setDict(attributeName: String, _ newValue: [String: String] ) {
        let userDefaults = UserDefaults.standard
        userDefaults.set(newValue, forKey: attributeName)
        logger.log("[AppUserDefaults] setDict stored \(attributeName)")
    }
    
    private func get(attributeName: String) -> String? {
        let userDefaults = UserDefaults.standard
        return userDefaults.string(forKey: attributeName)
    }
    
    private func getDict(attributeName: String) -> [String: String] {
        let userDefaults = UserDefaults.standard
        guard let dict = userDefaults.object(forKey: attributeName) as? Dictionary<String, String> else {
            return [:]
        }
        return dict
    }
    
    var firstName: String? {
        get {
            return get(attributeName: Constants.firstName)
        }
        set {
            set(attributeName: Constants.firstName, newValue ?? "")
        }
    }
    
    var lastName: String? {
        get {
            return get(attributeName: Constants.lastName)
        }
        set {
            set(attributeName: Constants.lastName, newValue ?? "")
        }
    }
    var displayName: String? {
        get {
            return get(attributeName: Constants.displayName)
        }
        set {
            set(attributeName: Constants.displayName, newValue ?? "")
        }
    }
    
    var emailId: String? {
        get {
            return get(attributeName: Constants.emailId)
        }
        set {
            set(attributeName: Constants.emailId, newValue ?? "")
        }
    }
    
    var fcmToken: String? {
        get {
            return get(attributeName: Constants.fcmToken)
        }
        set {
            set(attributeName: Constants.fcmToken, newValue ?? "")
        }
    }
    
    var apnsToken: String? {
        get {
            return get(attributeName: Constants.apnsToken)
        }
        set {
            set(attributeName: Constants.apnsToken, newValue ?? "")
        }
    }
    
    var friendsList: [String: String] {
        get {
            return getDict(attributeName: Constants.friendsList)
        }
        set {
            setDict(attributeName: Constants.friendsList, newValue)
        }
    }
}
