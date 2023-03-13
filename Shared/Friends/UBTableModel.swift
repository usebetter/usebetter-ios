//
//  UBTableModel.swift
//  usebetter
//
//  Created by Prashanth Jaligama on 3/11/23.
//

import Foundation
import Amplify
import Combine

class UBTableModel {
    struct Constants {
        static let maxFriendsCount = 100
    }
    public init() {
        
    }
    func getUBUserQuery(userId: String) -> GraphQLRequest<UBUser> {
        let documentString = "query GetUBUser($userId: String!) {\n  getUBUser(userId: $userId) {\n    userId\n    apnsToken\n    createdAt\n    displayName\n    email\n    fcmToken\n    firstName\n    id\n    lastName\n    updatedAt\n    __typename\n  }\n}"
        
        let documentVariables: [String: Any] = ["userId": userId]
        let documentName = "getUBUser"
        return GraphQLRequest<UBUser>(document: documentString,
                                  variables: documentVariables,
                                  responseType: UBUser.self,
                                  decodePath: documentName)
    }
    
    public func getUserInfo(userId: String) async -> UBUser? {
        do {
            let getResult = try await Amplify.API.query(request: getUBUserQuery(userId: userId))
            switch getResult {
            case .success(let userRecord):
                logger.log("[UserInfoModel]: getUserInfo: updating existing record \(String(describing: userRecord))")
                return userRecord
            case .failure(let error):
                logger.log("[UserInfoModel]: getUserInfo: failed to get record for user: \(userId) error: \(error)")
            }
        }
        catch {
            logger.log("[UserInfoModel]: getUserInfo: Exception \(error)")
        }
        return nil
    }
    
    func createOrUpdateRecord(create: Bool) async {
        guard let currentUser = AccountManager.sharedInstance.currentUsername else {
            return
        }
        guard let emailId = AppUserDefaults.shared.emailId else {
            return
        }
        logger.log("UserInfoModel: createOrUpdateRecord: \(create ? "creating" : "updating") record")
        
        var updatedUser = UBUser(userId: currentUser, email: emailId)
        updatedUser.displayName = AppUserDefaults.shared.displayName
        updatedUser.firstName = AppUserDefaults.shared.firstName
        updatedUser.lastName = AppUserDefaults.shared.lastName
        updatedUser.fcmToken = AppUserDefaults.shared.fcmToken
        updatedUser.apnsToken = AppUserDefaults.shared.apnsToken
        
        
        let result: Result<UBUser, GraphQLResponseError<UBUser>>
        do {
            if create {
                result = try await Amplify.API.mutate(request: .create(updatedUser))
            }
            else {
                result = try await Amplify.API.mutate(request: .update(updatedUser))
            }
            switch result {
            case .success(let dbSucessData):
                logger.log("UserInfoModel: createOrUpdateRecord success \(String(describing: dbSucessData))")
            case .failure(let error):
                logger.log("UserInfoModel: createOrUpdateRecord failed \(error)")
            }
        }
        catch {
            logger.error("UserInfoModel: createOrUpdateRecord: Exception \(error)")
        }
    }
    
    func getAllFriendsMapQuery(userId: String) -> GraphQLRequest<List<UBFriendsMap>> {
        let todo = UBFriendsMap.keys
        let predicate = todo.userId == userId
        let request = GraphQLRequest<UBFriendsMap>.list(UBFriendsMap.self, where: predicate, limit: Constants.maxFriendsCount)
        return request
    }
    
    func updateFriendsDB(userId: String, friendId: String, circleName: String, create: Bool) async -> Bool {
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
                return true
            case .failure(let error):
                logger.error("FriendsModel: updateFriendsDB: failed to update user Info \(error)")
            }
        }
        catch {
            logger.error("FriendsModel: updateFriendsDB: failed to query user Info \(error)")
        }
        return false
    }
    
    func getFriendsListFromDB(userId: String) async -> [String: String]  {
        var list: [String: String] = [:]
        do {

            let request = getAllFriendsMapQuery(userId: userId)
            logger.log("FriendsModel: getFriendsListFromDB: request \(String(describing: request))")
            let getResult = try await Amplify.API.query(request: request)
            switch getResult {
            case .success(let friendsMapInDB):
                logger.log("FriendsModel: getFriendsListFromDB: received friends List \(String(describing: friendsMapInDB)) count = \(friendsMapInDB.count)")

                let data = Array(friendsMapInDB)
                data.forEach {
                    let circleName = $0.circleName?[0] ?? "default"
                    logger.log("FriendsModel: getFriendsListFromDB friendId \($0.friendId) circleName \(circleName)")
                    list[$0.friendId] = circleName
                }
            case .failure(let error):
                logger.log("FriendsModel: getFriendsListFromDB: failed to get records from table error: \(error)")
            }
        }
        catch {
            logger.log("FriendsModel: getFriendsListFromDB: failed to query user Info \(error)")
        }
        return list
    }
}
