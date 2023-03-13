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
    @State private var friendSelection: Bool = true
    @EnvironmentObject var friendsModel: FriendsModel
    private var bag = Set<AnyCancellable>()
    private var preview = false
    struct Constants {
        static var shareLabel = "Tap to share my user Id"
    }
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
                                if #available(iOS 16.0, *) {
                                    ShareLink(item: currentUserAddFriendLink) {
                                        Label(Constants.shareLabel, systemImage:  "square.and.arrow.up")
                                    }
                                }
                                else {
                                    Text(Constants.shareLabel)
                                    Button( action: {
                                        let activityVC = UIActivityViewController(activityItems: [currentUserAddFriendLink as Any], applicationActivities: nil)
                                        UIApplication.shared.currentUIWindow()?.rootViewController?.present(activityVC, animated: true, completion: nil)
                                    }){
                                        Image(systemName: "doc.on.doc.fill")
                                    }
                                }
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
    
    private var currentUserAddFriendLink: String {
        var baseurl = "https://usebetter.app/friends/add?Id="
        guard let currentUserId = AccountManager.sharedInstance.currentUsername else {
            return baseurl
        }
        baseurl += currentUserId
        return baseurl
    }
}

struct DashboardSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardSettingsView(preview: true)
            .environmentObject(FriendsModel(preview: true))
    }
}

public extension UIApplication {
    func currentUIWindow() -> UIWindow? {
        let connectedScenes = UIApplication.shared.connectedScenes
            .filter { $0.activationState == .foregroundActive }
            .compactMap { $0 as? UIWindowScene }
        
        let window = connectedScenes.first?
            .windows
            .first { $0.isKeyWindow }
        return window
    }
}
