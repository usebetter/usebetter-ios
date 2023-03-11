//
//  ContentView.swift
//  Shared
//
//  Created by Prashanth Jaligama on 5/11/22.
//

import SwiftUI

enum CurrentPage {
    case signUp
    case dashboard
}

enum CurrentTab: Int {
    case home = 0
    case mystuff = 1
    case notifications = 2
    case settings = 3
}

class ViewRouter: ObservableObject {
    @Published var currentPage: CurrentPage = .signUp
    @Published var currentTab: CurrentTab = .home
    init() {
        registerForNotifications()
    }
    
    private func registerForNotifications() {
        NotificationCenter.default.addObserver(self, selector: #selector(showSettingsTab),  name: Notification.Name( UBNotificationName.showSettingsTab), object: nil)
    }
    
    @objc private func showSettingsTab(notification: NSNotification) {
        logger.log("[ViewRouter] showSettingsTab")
        currentTab = .settings
    }
}
