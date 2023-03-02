// swiftlint:disable all
import Amplify
import Foundation

extension UBFriends {
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
    let uBFriends = UBFriends.keys
    
    model.authRules = [
      rule(allow: .private, operations: [.create, .update, .delete, .read]),
      rule(allow: .groups, groupClaim: "cognito:groups", groups: ["Admins"], provider: .userPools, operations: [.create, .update, .delete, .read])
    ]
    
    model.pluralName = "UBFriends"
    
    model.attributes(
      .index(fields: ["id", "friendId"], name: "byUserIdAndFriendId")
    )
    
    model.fields(
      .field(uBFriends.id, is: .required, ofType: .string),
      .field(uBFriends.userId, is: .required, ofType: .string),
      .field(uBFriends.friendId, is: .required, ofType: .string),
      .field(uBFriends.circleName, is: .optional, ofType: .embeddedCollection(of: String.self)),
      .field(uBFriends.createdAt, is: .optional, isReadOnly: true, ofType: .dateTime),
      .field(uBFriends.updatedAt, is: .optional, isReadOnly: true, ofType: .dateTime),
      .field(uBFriends.uBUserFriendsId, is: .optional, ofType: .string)
    )
    }
}