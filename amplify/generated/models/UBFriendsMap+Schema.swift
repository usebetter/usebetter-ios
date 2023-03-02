// swiftlint:disable all
import Amplify
import Foundation

extension UBFriendsMap {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case userId
    case friendId
    case circleName
    case createdAt
    case updatedAt
    case uBUserFriendsId
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let uBFriendsMap = UBFriendsMap.keys
    
    model.authRules = [
      rule(allow: .private, operations: [.create, .update, .delete, .read]),
      rule(allow: .groups, groupClaim: "cognito:groups", groups: ["Admins"], provider: .userPools, operations: [.create, .update, .delete, .read])
    ]
    
    model.pluralName = "UBFriendsMaps"
    
    model.attributes(
      .index(fields: ["userId", "friendId"], name: nil)
    )
    
    model.fields(
      .id(),
      .field(uBFriendsMap.userId, is: .required, ofType: .string),
      .field(uBFriendsMap.friendId, is: .required, ofType: .string),
      .field(uBFriendsMap.circleName, is: .optional, ofType: .embeddedCollection(of: String.self)),
      .field(uBFriendsMap.createdAt, is: .optional, isReadOnly: true, ofType: .dateTime),
      .field(uBFriendsMap.updatedAt, is: .optional, isReadOnly: true, ofType: .dateTime),
      .field(uBFriendsMap.uBUserFriendsId, is: .optional, ofType: .string)
    )
    }
}