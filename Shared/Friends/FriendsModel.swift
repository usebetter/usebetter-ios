//
//  FriendsModel.swift
//  usebetter (iOS)
//
//  Created by Prashanth Jaligama on 3/3/23.
//

import Foundation
import Amplify
import Combine
import Base62

class FriendsModel: ObservableObject{
    @Published public var friendsList: [String: String] = [:]
    public let friendUpdatedEvent = PassthroughSubject<Bool, Never>()
    struct Constants {
        static let maxFriendsCount = 100
        static let appIdPrefix = "UseBetter://"
    }
    
    
    init(preview: Bool = false) {
        if preview {
            mockData()
        }
        else {
            registerForNotifications()
            loadFriends()
        }
    }
    
    public func base62CurrentUser() -> Int {
        guard let currentUser = AccountManager.sharedInstance.currentUsername else {
            return 0
        }
        let userIdWithPrefix = Constants.appIdPrefix + currentUser
        do {
            let encoded = try Base62.decode(userIdWithPrefix)
            return encoded;
        }
        catch {
            return 0
        }
    }
    
    public func userId(from base62Value: Int) -> String {
        var decoded = Base62.encode(base62Value)
        if decoded.starts(with: Constants.appIdPrefix) == true {
            decoded.removeFirst(Constants.appIdPrefix.count)
            return decoded
        }
        
        return ""
    }
    
    public func add(friendId: String, circleName: String = "default") {
        guard let currentUser = AccountManager.sharedInstance.currentUsername else {
            return
        }
        let lowerCaseFriendId = friendId.lowercased()
        let friendExists = friendsList.contains { $0.key == lowerCaseFriendId }
        if friendExists {
            logger.error("FriendsModel: Friend already exists")
            updateCirlceName(userId: currentUser, friendId: lowerCaseFriendId, circleName: circleName)
            return
        }
        friendsList[lowerCaseFriendId] = circleName
        Task {
            //1. Add current user to Friend Id
            await updateFriendsDB(userId: currentUser, friendId: lowerCaseFriendId, circleName: circleName, create: true)
            //2. Also Friend id to current user another entry
            await updateFriendsDB(userId: lowerCaseFriendId, friendId: currentUser, circleName: circleName, create: true)
        }
    }
    
    public func remove(friend id: String) {
        
    }
    
    public func updateCirlceName(userId: String, friendId: String, circleName: String = "default") {
        let friendExists = friendsList.contains { $0.key == friendId }
        if friendExists {
            if friendsList[friendId] != circleName {
                friendsList[friendId] = circleName
                Task {
                    //TODO: Test update the DB
                    logger.error("FriendsModel: changeCirlceName updating new circleName in DB")
                    await updateFriendsDB(userId: userId, friendId: friendId, circleName: circleName, create: false)
                }
            }
        }
    }
    
    func loadFriends() {
        DispatchQueue.main.async {
            let appUserDefaults = AppUserDefaults.shared
            self.friendsList = appUserDefaults.friendsList
        }
        
        guard let currentUser = AccountManager.sharedInstance.currentUsername else {
            return
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            Task {
                _ = await self.getFriendsListFromDB(userId: currentUser)
            }
        }
    }
    
    private func getAllFriendsMapQuery(userId: String) -> GraphQLRequest<List<UBFriendsMap>> {
        let todo = UBFriendsMap.keys
        let predicate = todo.userId == userId
        let request = GraphQLRequest<UBFriendsMap>.list(UBFriendsMap.self, where: predicate, limit: Constants.maxFriendsCount)
        return request
    }
    
    private func updateFriendsDB(userId: String, friendId: String, circleName: String, create: Bool) async {
        do {
            let result: Result<UBFriendsMap, GraphQLResponseError<UBFriendsMap>>
            if create {
                result = try await Amplify.API.mutate(request: .create(UBFriendsMap(userId: userId, friendId: friendId, circleName: [circleName])))
            }
            else {
                result = try await Amplify.API.mutate(request: .update(UBFriendsMap(userId: userId, friendId: friendId, circleName: [circleName])))
            }
            switch result {
            case .success(_):
                logger.log("FriendsModel: updateFriendsDB: updated successfully")
                friendUpdatedEvent.send(true)
            case .failure(let error):
                logger.error("FriendsModel: updateFriendsDB: failed to update user Info \(error)")
            }
        }
        catch {
            logger.error("FriendsModel: updateFriendsDB: failed to query user Info \(error)")
        }
    }
    
    private func getFriendsListFromDB(userId: String) async -> [String: String]  {
        do {

            let request = getAllFriendsMapQuery(userId: userId)
            logger.log("FriendsModel: getFriendsListFromDB: request \(String(describing: request))")
            let getResult = try await Amplify.API.query(request: request)
            switch getResult {
            case .success(let friendsMapInDB):
                logger.log("FriendsModel: getFriendsListFromDB: received friends List \(String(describing: friendsMapInDB)) count = \(friendsMapInDB.count)")
                //update Local storage with DB storage
                DispatchQueue.main.async {
                    let data = Array(friendsMapInDB)
                    data.forEach {
                        let circleName = $0.circleName?[0] ?? "default"
                        logger.log("FriendsModel: getFriendsListFromDB friendId \($0.friendId) circleName \(circleName)")
                        self.friendsList[$0.friendId] = circleName
                    }
                }
            case .failure(let error):
                logger.log("FriendsModel: getFriendsListFromDB: failed to get records from table error: \(error)")
            }
        }
        catch {
            logger.log("FriendsModel: getFriendsListFromDB: failed to query user Info \(error)")
        }
        return [:]
    }
    
    private func registerForNotifications() {
        NotificationCenter.default.addObserver(self, selector: #selector(addFriendId),  name: Notification.Name( UBNotificationName.addFriend), object: nil)
    }
    
    @objc private func addFriendId(notification: NSNotification) {
        guard let friendId = notification.object as? String else {
            logger.log("[FriendsModel] addFriendId Invalid FriendId")
            return
        }
        logger.log("[FriendsModel] addFriendId \(friendId)")
        add(friendId: friendId)
    }
    
    public func mockData() {
        self.friendsList["friend-A"] = "default"
        self.friendsList["friend-B"] = "default"
        self.friendsList["friend-C"] = "default"
    }
    
    /*
     
     private func getUBUserQuery(userId: String) -> GraphQLRequest<UBUser> {
         let documentString = "query GetUBUser($userId: String!) {\n  getUBUser(userId: $userId) {\n    userId\n    apnsToken\n    createdAt\n    displayName\n    email\n    fcmToken\n    firstName\n    id\n    lastName\n    updatedAt\n    __typename\n  }\n}"
         
         let documentVariables: [String: Any] = ["userId": userId]
         let documentName = "getUBUser"
         return GraphQLRequest<UBUser>(document: documentString,
                                   variables: documentVariables,
                                   responseType: UBUser.self,
                                   decodePath: documentName)
    }
    private func updateFriendsDB(for userId: string, create: Bool) async {
        do {

            let getResult = try await Amplify.API.query(request: getUBUserQuery(userId: userId))
            switch getResult {
            case .success(let userRecord):
                logger.log("FriendsModel: updateDB: updating existing record \(String(describing: userRecord))")
                await updateRecord(userRecord: userRecord)
            case .failure(let error):
                logger.log("FriendsModel: updateDB: failed to get records from table error: \(error)")
            }
        }
        catch {
            logger.log("FriendsModel: updateDB: failed to query user Info \(error)")
        }
    }
    
    private func updateRecord(userRecord: UBUser) async {
        logger.log("FriendsModel: updateRecord: updating")

        var updatedRecord = userRecord
        updatedRecord.friends = List(elements: getFriendsMap)
        
        do {
            
            let result = try await Amplify.API.mutate(request: .update(updatedRecord))
            
            switch result {
            case .success(let dbSucessData):
                logger.log("FriendsModel: updateRecord success \(String(describing: dbSucessData))")
                AppUserDefaults.shared.friendsList = friendsList
            case .failure(let error):
                logger.log("FriendsModel: updateRecord failed \(error)")
                friendsList = AppUserDefaults.shared.friendsList
            }
        }
        catch {
            logger.error("FriendsModel: updateRecord: Exception \(error)")
            friendsList = AppUserDefaults.shared.friendsList
        }
    }
    
    private var getFriendsMap: [UBFriendsMap] {
        guard let currentUser = AccountManager.sharedInstance.currentUsername else {
            return []
        }
        var friendsMap: [UBFriendsMap] = []
        self.friendsList.forEach {
            friendsMap.append(UBFriendsMap(userId: currentUser, friendId: $0.key, circleName: [$0.value]))
        }
        return friendsMap
    }
     */
}
