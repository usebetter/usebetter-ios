// swiftlint:disable all
import Amplify
import Foundation

public struct UBFriendsMap: Model {
  public let id: String
  public var userId: String
  public var friendId: String
  public var circleName: [String?]?
  public var createdAt: Temporal.DateTime?
  public var updatedAt: Temporal.DateTime?
  public var uBUserFriendsId: String?
  
  public init(id: String = UUID().uuidString,
      userId: String,
      friendId: String,
      circleName: [String?]? = nil,
      uBUserFriendsId: String? = nil) {
    self.init(id: id,
      userId: userId,
      friendId: friendId,
      circleName: circleName,
      createdAt: nil,
      updatedAt: nil,
      uBUserFriendsId: uBUserFriendsId)
  }
  internal init(id: String = UUID().uuidString,
      userId: String,
      friendId: String,
      circleName: [String?]? = nil,
      createdAt: Temporal.DateTime? = nil,
      updatedAt: Temporal.DateTime? = nil,
      uBUserFriendsId: String? = nil) {
      self.id = id
      self.userId = userId
      self.friendId = friendId
      self.circleName = circleName
      self.createdAt = createdAt
      self.updatedAt = updatedAt
      self.uBUserFriendsId = uBUserFriendsId
  }
}