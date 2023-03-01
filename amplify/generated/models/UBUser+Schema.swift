// swiftlint:disable all
import Amplify
import Foundation

extension UBUser {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case email
    case displayName
    case firstName
    case lastName
    case fcmToken
    case apnsToken
    case friends
    case createdAt
    case updatedAt
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let uBUser = UBUser.keys
    
    model.authRules = [
      rule(allow: .private, operations: [.create, .update, .delete, .read]),
      rule(allow: .groups, groupClaim: "cognito:groups", groups: ["Admins"], provider: .userPools, operations: [.create, .update, .delete, .read])
    ]
    
    model.pluralName = "UBUsers"
    
    model.attributes(
      .index(fields: ["id"], name: nil)
    )
    
    model.fields(
      .field(uBUser.id, is: .required, ofType: .string),
      .field(uBUser.email, is: .required, ofType: .string),
      .field(uBUser.displayName, is: .optional, ofType: .string),
      .field(uBUser.firstName, is: .optional, ofType: .string),
      .field(uBUser.lastName, is: .optional, ofType: .string),
      .field(uBUser.fcmToken, is: .optional, ofType: .string),
      .field(uBUser.apnsToken, is: .optional, ofType: .string),
      .hasMany(uBUser.friends, is: .optional, ofType: UBFriends.self, associatedWith: UBFriends.keys.id),
      .field(uBUser.createdAt, is: .optional, isReadOnly: true, ofType: .dateTime),
      .field(uBUser.updatedAt, is: .optional, isReadOnly: true, ofType: .dateTime)
    )
    }
}