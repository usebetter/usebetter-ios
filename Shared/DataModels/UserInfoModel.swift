//
//  UserInfoModel.swift
//  usebetter (iOS)
//
//  Created by Prashanth Jaligama on 2/19/23.
//

import Foundation
import Amplify
import Combine
import AWSClientRuntime
import ClientRuntime


class UserInfoModel: ObservableObject {
    private var currentUserInfo: UBUser? = nil
    private var bag = Set<AnyCancellable>()
    private var updateOnce = false
    private var updateTimer: Timer? = nil
    
    public init() {
        registerForEvents()
    }
    
    private func registerForEvents() {
        AccountManager.sharedInstance.signedInState
            .combineLatest(AppUserDefaults.shared.userAttributeChanged)
            .sink {
                if ($0.0 == .signedIn || $0.0 == .alreadySignedIn) && ($0.1 == true) {
                    self.scheduleUpdate()
            }
        }
        .store(in: &bag)
    }
    
    private func scheduleUpdate() {
        DispatchQueue.main.async {
            guard AccountManager.sharedInstance.currentUsername != nil else {
                return
            }
            guard AppUserDefaults.shared.emailId != nil  else {
                return
            }
            
            if self.updateTimer != nil {
                self.updateTimer?.invalidate()
                self.updateTimer = nil
            }
            self.updateTimer = Timer.scheduledTimer(withTimeInterval: 5.0, repeats: false) { _ in
                Task {
                    logger.log("UserInfoModel: scheduleUpdate: updating user info with new data")
                    await self.updateUserInfo()
                }
            }
        }
    }
    
    private func getUBUserQuery(currentUser: String) -> GraphQLRequest<UBUser> {
        let documentString = "query GetUBUser($userId: String!) {\n  getUBUser(userId: $userId) {\n    userId\n    apnsToken\n    createdAt\n    displayName\n    email\n    fcmToken\n    firstName\n    id\n    lastName\n    updatedAt\n    __typename\n  }\n}"
        
        let documentVariables: [String: Any] = ["userId": currentUser]
        let documentName = "getUBUser"
        return GraphQLRequest<UBUser>(document: documentString,
                                  variables: documentVariables,
                                  responseType: UBUser.self,
                                  decodePath: documentName)
    }
    private func updateUserInfo() async {
        guard let currentUser = AccountManager.sharedInstance.currentUsername else {
            return
        }
        do {
            
            let getResult = try await Amplify.API.query(request: getUBUserQuery(currentUser: currentUser))
            switch getResult {
            case .success(let userRecord):
//                if userRecord == nil {
//                    logger.log("UserInfoModel: updateUserInfo: creating new record")
//                    await createOrUpdateRecord(create: true)
//                    return
//                }
                logger.log("UserInfoModel: updateUserInfo: updating existing record \(String(describing: userRecord))")
                await createOrUpdateRecord(create: false)
                
            case .failure(let error):
                logger.log("UserInfoModel: updateUserInfo: failed to get records from table error: \(error)")
                await createOrUpdateRecord(create: true)
            }
        }
        catch {
            logger.log("UserInfoModel: loadEventsByReceiver: failed to query events \(error)")
        }
    }
    
    private func createOrUpdateRecord(create: Bool) async {
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
    
    /*
    
    private func loadUserInfo() async {
        guard let currentUser = AccountManager.sharedInstance.currentUsername else {
            return
        }
        
        let keys = UBUser.keys
        let request = GraphQLRequest<UBUser>.get(UBUser.self, byId: currentUser)
        do {
            let result = try await Amplify.API.query(request: request)
            switch result {
            case .success(_):
//                if eventsFromDB.isEmpty {
//                    logger.log("EventsModel: loadEventsByReceiver: no events found")
//                }
                logger.log("UserInfoModel: loadEventsByReceiver: events read")
//                self.updateMappedItems(eventsToMerge: eventsFromDB)
//                await self.loadEventsRecursively(currentPage: eventsFromDB)
            case .failure(let error):
                logger.log("UserInfoModel: loadEventsByReceiver: failed to query events \(error)")
            }
        }
        catch {
            logger.error("UserInfoModel: loadEventsByReceiver: Exception \(error)")
        }
        updateOnce = false
    }
    
    private func updateUserInfo() {
        
    }
    
    private func loadUserFriends() {
        
    }
    
    private func updateUserFriends() {
        
    }
    */
}
