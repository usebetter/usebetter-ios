//
//  UserInfoModel.swift
//  usebetter (iOS)
//
//  Created by Prashanth Jaligama on 2/19/23.
//

import Foundation
import Amplify
import Combine


class UserInfoModel: UBTableModel, ObservableObject  {
    private var currentUserInfo: UBUser? = nil
    private var bag = Set<AnyCancellable>()
    private var updateOnce = false
    private var updateTimer: Timer? = nil
    
    public override init() {
        super.init()
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
    
    
    private func updateUserInfo() async {
        guard let currentUser = AccountManager.sharedInstance.currentUsername else {
            return
        }
        do {
            let getResult = try await Amplify.API.query(request: getUBUserQuery(userId: currentUser))
            switch getResult {
            case .success(let userRecord):
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
