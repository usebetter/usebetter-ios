//
//  DashboardSettingsView.swift
//  usebetter
//
//  Created by Prashanth Jaligama on 5/28/22.
//

import SwiftUI
import Amplify
import Combine

struct DashboardSettingsView: View {
    @State private var changedDisplayName = "DisplayName"
    @State private var newFriendId = ""
    @EnvironmentObject var friendsModel: FriendsModel
    private var bag = Set<AnyCancellable>()
    private var preview = false
    init(preview: Bool = false) {
        self.preview = preview
    }
    var body: some View {
        UBNavigationStackView {
            ZStack(alignment: .top) {
              //  ScrollView { //Having Scroll view makes the List View to disappear
                    VStack(alignment: .leading) {
                        Text("User Profile")
                            .font(.title)
                        Spacer()
                            .frame(height: 100)
                        if userId != nil {
                            HStack {
                                Text("Email: ")
                                Text(signedInEmailId)
                            }
                            HStack() {
                                Text("Display Name: ")
                                TextField(displayName, text: $changedDisplayName)
                                    .textFieldStyle(.roundedBorder)
                                    .onSubmit {
                                        updateDisplayName()
                                    }
                            }
                            
                            HStack() {
                                Text("Add Friend: ")
                                TextField("", text: $newFriendId)
                                    .textFieldStyle(.roundedBorder)
                                Button("Add", action: {
                                        addFriend()
                                    })
                            }
                            
                            HStack() {
                                Text("Copy My User Id to send to friends")
                                Image(systemName: "doc.on.doc.fill")
                                
                            }

                            Spacer()
                            
                            HStack {
                                Text("Friend Id").frame(maxWidth: .infinity, alignment: .leading)
                                Text("Circle Name").frame(maxWidth: .infinity, alignment: .trailing)
                            }
                            .font(Font.headline.weight(.bold)).padding(25)
                            .foregroundColor(.red)
                            List {
                                ForEach(friendsData()) { friend in
                                    HStack {
                                        Text(friend.friendId).frame(maxWidth: .infinity, alignment: .leading)
                                        Text(friend.circleName).frame(maxWidth: .infinity, alignment: .trailing)
                                    }
                               }
                                .frame(minHeight: 20)
                            }
                        }
                    }// VStack
                    .padding(10)
               // }
            } // ZStack
        }  // Navigation view
        .onAppear {
            changedDisplayName = displayName
        }
        .refreshable {
            logger.log("DashboardSettingsView: manual refresh ")
            newFriendId = "a"
        }
    } // body

    struct FriendsData: Identifiable {
        let id = UUID()
        let circleName : String
        let friendId: String
    }
    private func friendsData() -> [FriendsData] {
        var friendsData: [FriendsData] = []
        friendsModel.friendsList.forEach {
            friendsData.append(FriendsData(circleName: $0.value, friendId: $0.key))
        }
        return friendsData
    }
    
    private func updateDisplayName() {
        logger.log("DashboardSettingsView: updateDisplayName")
        Task {
            do {
                let result = try await Amplify.Auth.update(userAttribute: AuthUserAttribute(AuthUserAttributeKey.custom("displayName"), value: $changedDisplayName.wrappedValue))
                logger.log("DashboardSettingsView: updateDisplayName updated \(result.isUpdated) ")
            }
            catch {
                logger.log("DashboardSettingsView: updateDisplayName error ")
            }
        }
    }
    
    
    private var userId: String? {
        if preview {
            return "PreviewUser"
        }
        else {
            return AccountManager.sharedInstance.currentUsername
        }
    }
    
    private var displayName: String {
        AccountManager.sharedInstance.displayName
    }
    
    private var signedInEmailId : String {
        if preview {
            return "preview@user.com"
        }
        else {
            return AccountManager.sharedInstance.emailId
        }
    }
    
    private func addFriend() {
        logger.log("DashboardSettingsView: addFriend")
        friendsModel.add(friendId: newFriendId)
    }
}

struct DashboardSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardSettingsView(preview: true)
            .environmentObject(FriendsModel(preview: true))
    }
}
