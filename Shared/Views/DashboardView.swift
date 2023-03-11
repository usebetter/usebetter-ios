//
//  DashboardView.swift
//  usebetter
//
//  Created by Prashanth Jaligama on 5/11/22.
//

import SwiftUI

enum DasbhoardTabs: Hashable {
    case home
    case groups
    case myStuff
    case settings
    case none
}

struct DashboardView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @EnvironmentObject var userFeedData: UserFeedModel
    @EnvironmentObject var friendsFeedData: FriendsFeedModel
    @EnvironmentObject var eventsModel: EventsModel
    @EnvironmentObject var friendsModel: FriendsModel
    
    @State private var selection: CurrentTab = .home
    var body: some View {
        TabView(selection: $selection) {
            DashboardHomeView(searchText: "")
                .environmentObject(friendsFeedData)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(CurrentTab.home)
            DashboardMyStuffView(searchText: "")
                .environmentObject(userFeedData)
                .tabItem {
                    Label("MyStuff", systemImage: "bag")
                }
                .tag(CurrentTab.mystuff)
            DashboardEventsView()
                .environmentObject(eventsModel)
                .tabItem {
                    Label("Notifications", systemImage: "person.3.sequence.fill")
                }
                .tag(CurrentTab.notifications)
            DashboardSettingsView()
                .environmentObject(friendsModel)
                .tabItem {
                    Label("Settings", systemImage: "gearshape")
                }
                .tag(CurrentTab.settings)
        }
        .onAppear {
            let tabBarAppearance = UITabBarAppearance()
            tabBarAppearance.configureWithDefaultBackground()
            UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
            selection = viewRouter.currentTab
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
            .environmentObject(ViewRouter())
            .environmentObject(UserFeedModel())
    }
}

