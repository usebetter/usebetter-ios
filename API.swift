//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct CreateUBEventInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, itemid: GraphQLID, ownerid: String, receiverid: String, state: Int) {
    graphQLMap = ["id": id, "itemid": itemid, "ownerid": ownerid, "receiverid": receiverid, "state": state]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var itemid: GraphQLID {
    get {
      return graphQLMap["itemid"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "itemid")
    }
  }

  public var ownerid: String {
    get {
      return graphQLMap["ownerid"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ownerid")
    }
  }

  public var receiverid: String {
    get {
      return graphQLMap["receiverid"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "receiverid")
    }
  }

  public var state: Int {
    get {
      return graphQLMap["state"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "state")
    }
  }
}

public struct ModelUBEventConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(itemid: ModelIDInput? = nil, ownerid: ModelStringInput? = nil, receiverid: ModelStringInput? = nil, and: [ModelUBEventConditionInput?]? = nil, or: [ModelUBEventConditionInput?]? = nil, not: ModelUBEventConditionInput? = nil) {
    graphQLMap = ["itemid": itemid, "ownerid": ownerid, "receiverid": receiverid, "and": and, "or": or, "not": not]
  }

  public var itemid: ModelIDInput? {
    get {
      return graphQLMap["itemid"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "itemid")
    }
  }

  public var ownerid: ModelStringInput? {
    get {
      return graphQLMap["ownerid"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ownerid")
    }
  }

  public var receiverid: ModelStringInput? {
    get {
      return graphQLMap["receiverid"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "receiverid")
    }
  }

  public var and: [ModelUBEventConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelUBEventConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelUBEventConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelUBEventConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelUBEventConditionInput? {
    get {
      return graphQLMap["not"] as! ModelUBEventConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelIDInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: GraphQLID? = nil, eq: GraphQLID? = nil, le: GraphQLID? = nil, lt: GraphQLID? = nil, ge: GraphQLID? = nil, gt: GraphQLID? = nil, contains: GraphQLID? = nil, notContains: GraphQLID? = nil, between: [GraphQLID?]? = nil, beginsWith: GraphQLID? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: GraphQLID? {
    get {
      return graphQLMap["ne"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: GraphQLID? {
    get {
      return graphQLMap["eq"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: GraphQLID? {
    get {
      return graphQLMap["le"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: GraphQLID? {
    get {
      return graphQLMap["lt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: GraphQLID? {
    get {
      return graphQLMap["ge"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: GraphQLID? {
    get {
      return graphQLMap["gt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: GraphQLID? {
    get {
      return graphQLMap["contains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: GraphQLID? {
    get {
      return graphQLMap["notContains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [GraphQLID?]? {
    get {
      return graphQLMap["between"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: GraphQLID? {
    get {
      return graphQLMap["beginsWith"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public enum ModelAttributeTypes: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  public typealias RawValue = String
  case binary
  case binarySet
  case bool
  case list
  case map
  case number
  case numberSet
  case string
  case stringSet
  case null
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "binary": self = .binary
      case "binarySet": self = .binarySet
      case "bool": self = .bool
      case "list": self = .list
      case "map": self = .map
      case "number": self = .number
      case "numberSet": self = .numberSet
      case "string": self = .string
      case "stringSet": self = .stringSet
      case "_null": self = .null
      default: self = .unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .binary: return "binary"
      case .binarySet: return "binarySet"
      case .bool: return "bool"
      case .list: return "list"
      case .map: return "map"
      case .number: return "number"
      case .numberSet: return "numberSet"
      case .string: return "string"
      case .stringSet: return "stringSet"
      case .null: return "_null"
      case .unknown(let value): return value
    }
  }

  public static func == (lhs: ModelAttributeTypes, rhs: ModelAttributeTypes) -> Bool {
    switch (lhs, rhs) {
      case (.binary, .binary): return true
      case (.binarySet, .binarySet): return true
      case (.bool, .bool): return true
      case (.list, .list): return true
      case (.map, .map): return true
      case (.number, .number): return true
      case (.numberSet, .numberSet): return true
      case (.string, .string): return true
      case (.stringSet, .stringSet): return true
      case (.null, .null): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

public struct ModelSizeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, between: [Int?]? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }
}

public struct ModelStringInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: String? = nil, eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, contains: String? = nil, notContains: String? = nil, between: [String?]? = nil, beginsWith: String? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: String? {
    get {
      return graphQLMap["contains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: String? {
    get {
      return graphQLMap["notContains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public struct UpdateUBEventInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, itemid: GraphQLID? = nil, ownerid: String? = nil, receiverid: String? = nil, state: Int) {
    graphQLMap = ["id": id, "itemid": itemid, "ownerid": ownerid, "receiverid": receiverid, "state": state]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var itemid: GraphQLID? {
    get {
      return graphQLMap["itemid"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "itemid")
    }
  }

  public var ownerid: String? {
    get {
      return graphQLMap["ownerid"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ownerid")
    }
  }

  public var receiverid: String? {
    get {
      return graphQLMap["receiverid"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "receiverid")
    }
  }

  public var state: Int {
    get {
      return graphQLMap["state"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "state")
    }
  }
}

public struct DeleteUBEventInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, state: Int) {
    graphQLMap = ["id": id, "state": state]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var state: Int {
    get {
      return graphQLMap["state"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "state")
    }
  }
}

public struct CreateUBUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, userId: String, email: String, displayName: String? = nil, firstName: String? = nil, lastName: String? = nil, fcmToken: String? = nil, apnsToken: String? = nil) {
    graphQLMap = ["id": id, "userId": userId, "email": email, "displayName": displayName, "firstName": firstName, "lastName": lastName, "fcmToken": fcmToken, "apnsToken": apnsToken]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var userId: String {
    get {
      return graphQLMap["userId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userId")
    }
  }

  public var email: String {
    get {
      return graphQLMap["email"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "email")
    }
  }

  public var displayName: String? {
    get {
      return graphQLMap["displayName"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "displayName")
    }
  }

  public var firstName: String? {
    get {
      return graphQLMap["firstName"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "firstName")
    }
  }

  public var lastName: String? {
    get {
      return graphQLMap["lastName"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lastName")
    }
  }

  public var fcmToken: String? {
    get {
      return graphQLMap["fcmToken"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "fcmToken")
    }
  }

  public var apnsToken: String? {
    get {
      return graphQLMap["apnsToken"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "apnsToken")
    }
  }
}

public struct ModelUBUserConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(email: ModelStringInput? = nil, displayName: ModelStringInput? = nil, firstName: ModelStringInput? = nil, lastName: ModelStringInput? = nil, fcmToken: ModelStringInput? = nil, apnsToken: ModelStringInput? = nil, and: [ModelUBUserConditionInput?]? = nil, or: [ModelUBUserConditionInput?]? = nil, not: ModelUBUserConditionInput? = nil) {
    graphQLMap = ["email": email, "displayName": displayName, "firstName": firstName, "lastName": lastName, "fcmToken": fcmToken, "apnsToken": apnsToken, "and": and, "or": or, "not": not]
  }

  public var email: ModelStringInput? {
    get {
      return graphQLMap["email"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "email")
    }
  }

  public var displayName: ModelStringInput? {
    get {
      return graphQLMap["displayName"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "displayName")
    }
  }

  public var firstName: ModelStringInput? {
    get {
      return graphQLMap["firstName"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "firstName")
    }
  }

  public var lastName: ModelStringInput? {
    get {
      return graphQLMap["lastName"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lastName")
    }
  }

  public var fcmToken: ModelStringInput? {
    get {
      return graphQLMap["fcmToken"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "fcmToken")
    }
  }

  public var apnsToken: ModelStringInput? {
    get {
      return graphQLMap["apnsToken"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "apnsToken")
    }
  }

  public var and: [ModelUBUserConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelUBUserConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelUBUserConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelUBUserConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelUBUserConditionInput? {
    get {
      return graphQLMap["not"] as! ModelUBUserConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct UpdateUBUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, userId: String, email: String? = nil, displayName: String? = nil, firstName: String? = nil, lastName: String? = nil, fcmToken: String? = nil, apnsToken: String? = nil) {
    graphQLMap = ["id": id, "userId": userId, "email": email, "displayName": displayName, "firstName": firstName, "lastName": lastName, "fcmToken": fcmToken, "apnsToken": apnsToken]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var userId: String {
    get {
      return graphQLMap["userId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userId")
    }
  }

  public var email: String? {
    get {
      return graphQLMap["email"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "email")
    }
  }

  public var displayName: String? {
    get {
      return graphQLMap["displayName"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "displayName")
    }
  }

  public var firstName: String? {
    get {
      return graphQLMap["firstName"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "firstName")
    }
  }

  public var lastName: String? {
    get {
      return graphQLMap["lastName"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lastName")
    }
  }

  public var fcmToken: String? {
    get {
      return graphQLMap["fcmToken"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "fcmToken")
    }
  }

  public var apnsToken: String? {
    get {
      return graphQLMap["apnsToken"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "apnsToken")
    }
  }
}

public struct DeleteUBUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(userId: String) {
    graphQLMap = ["userId": userId]
  }

  public var userId: String {
    get {
      return graphQLMap["userId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userId")
    }
  }
}

public struct CreateUBFriendsMapInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, userId: String, friendId: String, circleName: [String?]? = nil, uBUserFriendsId: GraphQLID? = nil) {
    graphQLMap = ["id": id, "userId": userId, "friendId": friendId, "circleName": circleName, "uBUserFriendsId": uBUserFriendsId]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var userId: String {
    get {
      return graphQLMap["userId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userId")
    }
  }

  public var friendId: String {
    get {
      return graphQLMap["friendId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "friendId")
    }
  }

  public var circleName: [String?]? {
    get {
      return graphQLMap["circleName"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "circleName")
    }
  }

  public var uBUserFriendsId: GraphQLID? {
    get {
      return graphQLMap["uBUserFriendsId"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "uBUserFriendsId")
    }
  }
}

public struct ModelUBFriendsMapConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(circleName: ModelStringInput? = nil, and: [ModelUBFriendsMapConditionInput?]? = nil, or: [ModelUBFriendsMapConditionInput?]? = nil, not: ModelUBFriendsMapConditionInput? = nil, uBUserFriendsId: ModelIDInput? = nil) {
    graphQLMap = ["circleName": circleName, "and": and, "or": or, "not": not, "uBUserFriendsId": uBUserFriendsId]
  }

  public var circleName: ModelStringInput? {
    get {
      return graphQLMap["circleName"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "circleName")
    }
  }

  public var and: [ModelUBFriendsMapConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelUBFriendsMapConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelUBFriendsMapConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelUBFriendsMapConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelUBFriendsMapConditionInput? {
    get {
      return graphQLMap["not"] as! ModelUBFriendsMapConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }

  public var uBUserFriendsId: ModelIDInput? {
    get {
      return graphQLMap["uBUserFriendsId"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "uBUserFriendsId")
    }
  }
}

public struct UpdateUBFriendsMapInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, userId: String, friendId: String, circleName: [String?]? = nil, uBUserFriendsId: GraphQLID? = nil) {
    graphQLMap = ["id": id, "userId": userId, "friendId": friendId, "circleName": circleName, "uBUserFriendsId": uBUserFriendsId]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var userId: String {
    get {
      return graphQLMap["userId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userId")
    }
  }

  public var friendId: String {
    get {
      return graphQLMap["friendId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "friendId")
    }
  }

  public var circleName: [String?]? {
    get {
      return graphQLMap["circleName"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "circleName")
    }
  }

  public var uBUserFriendsId: GraphQLID? {
    get {
      return graphQLMap["uBUserFriendsId"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "uBUserFriendsId")
    }
  }
}

public struct DeleteUBFriendsMapInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(userId: String, friendId: String) {
    graphQLMap = ["userId": userId, "friendId": friendId]
  }

  public var userId: String {
    get {
      return graphQLMap["userId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userId")
    }
  }

  public var friendId: String {
    get {
      return graphQLMap["friendId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "friendId")
    }
  }
}

public struct ModelIntKeyConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, between: [Int?]? = nil) {
    graphQLMap = ["eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between]
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }
}

public struct ModelUBEventFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, itemid: ModelIDInput? = nil, ownerid: ModelStringInput? = nil, receiverid: ModelStringInput? = nil, state: ModelIntInput? = nil, and: [ModelUBEventFilterInput?]? = nil, or: [ModelUBEventFilterInput?]? = nil, not: ModelUBEventFilterInput? = nil) {
    graphQLMap = ["id": id, "itemid": itemid, "ownerid": ownerid, "receiverid": receiverid, "state": state, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var itemid: ModelIDInput? {
    get {
      return graphQLMap["itemid"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "itemid")
    }
  }

  public var ownerid: ModelStringInput? {
    get {
      return graphQLMap["ownerid"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ownerid")
    }
  }

  public var receiverid: ModelStringInput? {
    get {
      return graphQLMap["receiverid"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "receiverid")
    }
  }

  public var state: ModelIntInput? {
    get {
      return graphQLMap["state"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "state")
    }
  }

  public var and: [ModelUBEventFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelUBEventFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelUBEventFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelUBEventFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelUBEventFilterInput? {
    get {
      return graphQLMap["not"] as! ModelUBEventFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelIntInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, between: [Int?]? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between, "attributeExists": attributeExists, "attributeType": attributeType]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }
}

public enum ModelSortDirection: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  public typealias RawValue = String
  case asc
  case desc
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "ASC": self = .asc
      case "DESC": self = .desc
      default: self = .unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .asc: return "ASC"
      case .desc: return "DESC"
      case .unknown(let value): return value
    }
  }

  public static func == (lhs: ModelSortDirection, rhs: ModelSortDirection) -> Bool {
    switch (lhs, rhs) {
      case (.asc, .asc): return true
      case (.desc, .desc): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

public struct ModelUBUserFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, userId: ModelStringInput? = nil, email: ModelStringInput? = nil, displayName: ModelStringInput? = nil, firstName: ModelStringInput? = nil, lastName: ModelStringInput? = nil, fcmToken: ModelStringInput? = nil, apnsToken: ModelStringInput? = nil, and: [ModelUBUserFilterInput?]? = nil, or: [ModelUBUserFilterInput?]? = nil, not: ModelUBUserFilterInput? = nil) {
    graphQLMap = ["id": id, "userId": userId, "email": email, "displayName": displayName, "firstName": firstName, "lastName": lastName, "fcmToken": fcmToken, "apnsToken": apnsToken, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var userId: ModelStringInput? {
    get {
      return graphQLMap["userId"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userId")
    }
  }

  public var email: ModelStringInput? {
    get {
      return graphQLMap["email"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "email")
    }
  }

  public var displayName: ModelStringInput? {
    get {
      return graphQLMap["displayName"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "displayName")
    }
  }

  public var firstName: ModelStringInput? {
    get {
      return graphQLMap["firstName"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "firstName")
    }
  }

  public var lastName: ModelStringInput? {
    get {
      return graphQLMap["lastName"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lastName")
    }
  }

  public var fcmToken: ModelStringInput? {
    get {
      return graphQLMap["fcmToken"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "fcmToken")
    }
  }

  public var apnsToken: ModelStringInput? {
    get {
      return graphQLMap["apnsToken"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "apnsToken")
    }
  }

  public var and: [ModelUBUserFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelUBUserFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelUBUserFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelUBUserFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelUBUserFilterInput? {
    get {
      return graphQLMap["not"] as! ModelUBUserFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelStringKeyConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, between: [String?]? = nil, beginsWith: String? = nil) {
    graphQLMap = ["eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between, "beginsWith": beginsWith]
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }
}

public struct ModelUBFriendsMapFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, userId: ModelStringInput? = nil, friendId: ModelStringInput? = nil, circleName: ModelStringInput? = nil, and: [ModelUBFriendsMapFilterInput?]? = nil, or: [ModelUBFriendsMapFilterInput?]? = nil, not: ModelUBFriendsMapFilterInput? = nil, uBUserFriendsId: ModelIDInput? = nil) {
    graphQLMap = ["id": id, "userId": userId, "friendId": friendId, "circleName": circleName, "and": and, "or": or, "not": not, "uBUserFriendsId": uBUserFriendsId]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var userId: ModelStringInput? {
    get {
      return graphQLMap["userId"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userId")
    }
  }

  public var friendId: ModelStringInput? {
    get {
      return graphQLMap["friendId"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "friendId")
    }
  }

  public var circleName: ModelStringInput? {
    get {
      return graphQLMap["circleName"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "circleName")
    }
  }

  public var and: [ModelUBFriendsMapFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelUBFriendsMapFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelUBFriendsMapFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelUBFriendsMapFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelUBFriendsMapFilterInput? {
    get {
      return graphQLMap["not"] as! ModelUBFriendsMapFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }

  public var uBUserFriendsId: ModelIDInput? {
    get {
      return graphQLMap["uBUserFriendsId"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "uBUserFriendsId")
    }
  }
}

public struct ModelSubscriptionUBEventFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelSubscriptionIDInput? = nil, itemid: ModelSubscriptionIDInput? = nil, ownerid: ModelSubscriptionStringInput? = nil, receiverid: ModelSubscriptionStringInput? = nil, state: ModelSubscriptionIntInput? = nil, and: [ModelSubscriptionUBEventFilterInput?]? = nil, or: [ModelSubscriptionUBEventFilterInput?]? = nil) {
    graphQLMap = ["id": id, "itemid": itemid, "ownerid": ownerid, "receiverid": receiverid, "state": state, "and": and, "or": or]
  }

  public var id: ModelSubscriptionIDInput? {
    get {
      return graphQLMap["id"] as! ModelSubscriptionIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var itemid: ModelSubscriptionIDInput? {
    get {
      return graphQLMap["itemid"] as! ModelSubscriptionIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "itemid")
    }
  }

  public var ownerid: ModelSubscriptionStringInput? {
    get {
      return graphQLMap["ownerid"] as! ModelSubscriptionStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ownerid")
    }
  }

  public var receiverid: ModelSubscriptionStringInput? {
    get {
      return graphQLMap["receiverid"] as! ModelSubscriptionStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "receiverid")
    }
  }

  public var state: ModelSubscriptionIntInput? {
    get {
      return graphQLMap["state"] as! ModelSubscriptionIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "state")
    }
  }

  public var and: [ModelSubscriptionUBEventFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelSubscriptionUBEventFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelSubscriptionUBEventFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelSubscriptionUBEventFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }
}

public struct ModelSubscriptionIDInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: GraphQLID? = nil, eq: GraphQLID? = nil, le: GraphQLID? = nil, lt: GraphQLID? = nil, ge: GraphQLID? = nil, gt: GraphQLID? = nil, contains: GraphQLID? = nil, notContains: GraphQLID? = nil, between: [GraphQLID?]? = nil, beginsWith: GraphQLID? = nil, `in`: [GraphQLID?]? = nil, notIn: [GraphQLID?]? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "in": `in`, "notIn": notIn]
  }

  public var ne: GraphQLID? {
    get {
      return graphQLMap["ne"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: GraphQLID? {
    get {
      return graphQLMap["eq"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: GraphQLID? {
    get {
      return graphQLMap["le"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: GraphQLID? {
    get {
      return graphQLMap["lt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: GraphQLID? {
    get {
      return graphQLMap["ge"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: GraphQLID? {
    get {
      return graphQLMap["gt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: GraphQLID? {
    get {
      return graphQLMap["contains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: GraphQLID? {
    get {
      return graphQLMap["notContains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [GraphQLID?]? {
    get {
      return graphQLMap["between"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: GraphQLID? {
    get {
      return graphQLMap["beginsWith"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var `in`: [GraphQLID?]? {
    get {
      return graphQLMap["in"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "in")
    }
  }

  public var notIn: [GraphQLID?]? {
    get {
      return graphQLMap["notIn"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notIn")
    }
  }
}

public struct ModelSubscriptionStringInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: String? = nil, eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, contains: String? = nil, notContains: String? = nil, between: [String?]? = nil, beginsWith: String? = nil, `in`: [String?]? = nil, notIn: [String?]? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "in": `in`, "notIn": notIn]
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: String? {
    get {
      return graphQLMap["contains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: String? {
    get {
      return graphQLMap["notContains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var `in`: [String?]? {
    get {
      return graphQLMap["in"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "in")
    }
  }

  public var notIn: [String?]? {
    get {
      return graphQLMap["notIn"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notIn")
    }
  }
}

public struct ModelSubscriptionIntInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, between: [Int?]? = nil, `in`: [Int?]? = nil, notIn: [Int?]? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between, "in": `in`, "notIn": notIn]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var `in`: [Int?]? {
    get {
      return graphQLMap["in"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "in")
    }
  }

  public var notIn: [Int?]? {
    get {
      return graphQLMap["notIn"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notIn")
    }
  }
}

public struct ModelSubscriptionUBUserFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelSubscriptionIDInput? = nil, userId: ModelSubscriptionStringInput? = nil, email: ModelSubscriptionStringInput? = nil, displayName: ModelSubscriptionStringInput? = nil, firstName: ModelSubscriptionStringInput? = nil, lastName: ModelSubscriptionStringInput? = nil, fcmToken: ModelSubscriptionStringInput? = nil, apnsToken: ModelSubscriptionStringInput? = nil, and: [ModelSubscriptionUBUserFilterInput?]? = nil, or: [ModelSubscriptionUBUserFilterInput?]? = nil) {
    graphQLMap = ["id": id, "userId": userId, "email": email, "displayName": displayName, "firstName": firstName, "lastName": lastName, "fcmToken": fcmToken, "apnsToken": apnsToken, "and": and, "or": or]
  }

  public var id: ModelSubscriptionIDInput? {
    get {
      return graphQLMap["id"] as! ModelSubscriptionIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var userId: ModelSubscriptionStringInput? {
    get {
      return graphQLMap["userId"] as! ModelSubscriptionStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userId")
    }
  }

  public var email: ModelSubscriptionStringInput? {
    get {
      return graphQLMap["email"] as! ModelSubscriptionStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "email")
    }
  }

  public var displayName: ModelSubscriptionStringInput? {
    get {
      return graphQLMap["displayName"] as! ModelSubscriptionStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "displayName")
    }
  }

  public var firstName: ModelSubscriptionStringInput? {
    get {
      return graphQLMap["firstName"] as! ModelSubscriptionStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "firstName")
    }
  }

  public var lastName: ModelSubscriptionStringInput? {
    get {
      return graphQLMap["lastName"] as! ModelSubscriptionStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lastName")
    }
  }

  public var fcmToken: ModelSubscriptionStringInput? {
    get {
      return graphQLMap["fcmToken"] as! ModelSubscriptionStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "fcmToken")
    }
  }

  public var apnsToken: ModelSubscriptionStringInput? {
    get {
      return graphQLMap["apnsToken"] as! ModelSubscriptionStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "apnsToken")
    }
  }

  public var and: [ModelSubscriptionUBUserFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelSubscriptionUBUserFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelSubscriptionUBUserFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelSubscriptionUBUserFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }
}

public struct ModelSubscriptionUBFriendsMapFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelSubscriptionIDInput? = nil, userId: ModelSubscriptionStringInput? = nil, friendId: ModelSubscriptionStringInput? = nil, circleName: ModelSubscriptionStringInput? = nil, and: [ModelSubscriptionUBFriendsMapFilterInput?]? = nil, or: [ModelSubscriptionUBFriendsMapFilterInput?]? = nil) {
    graphQLMap = ["id": id, "userId": userId, "friendId": friendId, "circleName": circleName, "and": and, "or": or]
  }

  public var id: ModelSubscriptionIDInput? {
    get {
      return graphQLMap["id"] as! ModelSubscriptionIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var userId: ModelSubscriptionStringInput? {
    get {
      return graphQLMap["userId"] as! ModelSubscriptionStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userId")
    }
  }

  public var friendId: ModelSubscriptionStringInput? {
    get {
      return graphQLMap["friendId"] as! ModelSubscriptionStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "friendId")
    }
  }

  public var circleName: ModelSubscriptionStringInput? {
    get {
      return graphQLMap["circleName"] as! ModelSubscriptionStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "circleName")
    }
  }

  public var and: [ModelSubscriptionUBFriendsMapFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelSubscriptionUBFriendsMapFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelSubscriptionUBFriendsMapFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelSubscriptionUBFriendsMapFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }
}

public final class CreateUbEventMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateUBEvent($input: CreateUBEventInput!, $condition: ModelUBEventConditionInput) {\n  createUBEvent(input: $input, condition: $condition) {\n    __typename\n    id\n    itemid\n    ownerid\n    receiverid\n    state\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreateUBEventInput
  public var condition: ModelUBEventConditionInput?

  public init(input: CreateUBEventInput, condition: ModelUBEventConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createUBEvent", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateUbEvent.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createUbEvent: CreateUbEvent? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createUBEvent": createUbEvent.flatMap { $0.snapshot }])
    }

    public var createUbEvent: CreateUbEvent? {
      get {
        return (snapshot["createUBEvent"] as? Snapshot).flatMap { CreateUbEvent(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createUBEvent")
      }
    }

    public struct CreateUbEvent: GraphQLSelectionSet {
      public static let possibleTypes = ["UBEvent"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("itemid", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("ownerid", type: .nonNull(.scalar(String.self))),
        GraphQLField("receiverid", type: .nonNull(.scalar(String.self))),
        GraphQLField("state", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, itemid: GraphQLID, ownerid: String, receiverid: String, state: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "UBEvent", "id": id, "itemid": itemid, "ownerid": ownerid, "receiverid": receiverid, "state": state, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var itemid: GraphQLID {
        get {
          return snapshot["itemid"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "itemid")
        }
      }

      public var ownerid: String {
        get {
          return snapshot["ownerid"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ownerid")
        }
      }

      public var receiverid: String {
        get {
          return snapshot["receiverid"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "receiverid")
        }
      }

      public var state: Int {
        get {
          return snapshot["state"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "state")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class UpdateUbEventMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateUBEvent($input: UpdateUBEventInput!, $condition: ModelUBEventConditionInput) {\n  updateUBEvent(input: $input, condition: $condition) {\n    __typename\n    id\n    itemid\n    ownerid\n    receiverid\n    state\n    createdAt\n    updatedAt\n  }\n}"

  public var input: UpdateUBEventInput
  public var condition: ModelUBEventConditionInput?

  public init(input: UpdateUBEventInput, condition: ModelUBEventConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateUBEvent", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateUbEvent.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateUbEvent: UpdateUbEvent? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateUBEvent": updateUbEvent.flatMap { $0.snapshot }])
    }

    public var updateUbEvent: UpdateUbEvent? {
      get {
        return (snapshot["updateUBEvent"] as? Snapshot).flatMap { UpdateUbEvent(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateUBEvent")
      }
    }

    public struct UpdateUbEvent: GraphQLSelectionSet {
      public static let possibleTypes = ["UBEvent"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("itemid", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("ownerid", type: .nonNull(.scalar(String.self))),
        GraphQLField("receiverid", type: .nonNull(.scalar(String.self))),
        GraphQLField("state", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, itemid: GraphQLID, ownerid: String, receiverid: String, state: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "UBEvent", "id": id, "itemid": itemid, "ownerid": ownerid, "receiverid": receiverid, "state": state, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var itemid: GraphQLID {
        get {
          return snapshot["itemid"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "itemid")
        }
      }

      public var ownerid: String {
        get {
          return snapshot["ownerid"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ownerid")
        }
      }

      public var receiverid: String {
        get {
          return snapshot["receiverid"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "receiverid")
        }
      }

      public var state: Int {
        get {
          return snapshot["state"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "state")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class DeleteUbEventMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteUBEvent($input: DeleteUBEventInput!, $condition: ModelUBEventConditionInput) {\n  deleteUBEvent(input: $input, condition: $condition) {\n    __typename\n    id\n    itemid\n    ownerid\n    receiverid\n    state\n    createdAt\n    updatedAt\n  }\n}"

  public var input: DeleteUBEventInput
  public var condition: ModelUBEventConditionInput?

  public init(input: DeleteUBEventInput, condition: ModelUBEventConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteUBEvent", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteUbEvent.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteUbEvent: DeleteUbEvent? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteUBEvent": deleteUbEvent.flatMap { $0.snapshot }])
    }

    public var deleteUbEvent: DeleteUbEvent? {
      get {
        return (snapshot["deleteUBEvent"] as? Snapshot).flatMap { DeleteUbEvent(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteUBEvent")
      }
    }

    public struct DeleteUbEvent: GraphQLSelectionSet {
      public static let possibleTypes = ["UBEvent"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("itemid", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("ownerid", type: .nonNull(.scalar(String.self))),
        GraphQLField("receiverid", type: .nonNull(.scalar(String.self))),
        GraphQLField("state", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, itemid: GraphQLID, ownerid: String, receiverid: String, state: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "UBEvent", "id": id, "itemid": itemid, "ownerid": ownerid, "receiverid": receiverid, "state": state, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var itemid: GraphQLID {
        get {
          return snapshot["itemid"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "itemid")
        }
      }

      public var ownerid: String {
        get {
          return snapshot["ownerid"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ownerid")
        }
      }

      public var receiverid: String {
        get {
          return snapshot["receiverid"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "receiverid")
        }
      }

      public var state: Int {
        get {
          return snapshot["state"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "state")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class CreateUbUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateUBUser($input: CreateUBUserInput!, $condition: ModelUBUserConditionInput) {\n  createUBUser(input: $input, condition: $condition) {\n    __typename\n    id\n    userId\n    email\n    displayName\n    firstName\n    lastName\n    fcmToken\n    apnsToken\n    friends {\n      __typename\n      items {\n        __typename\n        id\n        userId\n        friendId\n        circleName\n        createdAt\n        updatedAt\n        uBUserFriendsId\n      }\n      nextToken\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreateUBUserInput
  public var condition: ModelUBUserConditionInput?

  public init(input: CreateUBUserInput, condition: ModelUBUserConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createUBUser", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateUbUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createUbUser: CreateUbUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createUBUser": createUbUser.flatMap { $0.snapshot }])
    }

    public var createUbUser: CreateUbUser? {
      get {
        return (snapshot["createUBUser"] as? Snapshot).flatMap { CreateUbUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createUBUser")
      }
    }

    public struct CreateUbUser: GraphQLSelectionSet {
      public static let possibleTypes = ["UBUser"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("displayName", type: .scalar(String.self)),
        GraphQLField("firstName", type: .scalar(String.self)),
        GraphQLField("lastName", type: .scalar(String.self)),
        GraphQLField("fcmToken", type: .scalar(String.self)),
        GraphQLField("apnsToken", type: .scalar(String.self)),
        GraphQLField("friends", type: .object(Friend.selections)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, email: String, displayName: String? = nil, firstName: String? = nil, lastName: String? = nil, fcmToken: String? = nil, apnsToken: String? = nil, friends: Friend? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "UBUser", "id": id, "userId": userId, "email": email, "displayName": displayName, "firstName": firstName, "lastName": lastName, "fcmToken": fcmToken, "apnsToken": apnsToken, "friends": friends.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var email: String {
        get {
          return snapshot["email"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var displayName: String? {
        get {
          return snapshot["displayName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "displayName")
        }
      }

      public var firstName: String? {
        get {
          return snapshot["firstName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var lastName: String? {
        get {
          return snapshot["lastName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastName")
        }
      }

      public var fcmToken: String? {
        get {
          return snapshot["fcmToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "fcmToken")
        }
      }

      public var apnsToken: String? {
        get {
          return snapshot["apnsToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "apnsToken")
        }
      }

      public var friends: Friend? {
        get {
          return (snapshot["friends"] as? Snapshot).flatMap { Friend(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "friends")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Friend: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelUBFriendsMapConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?], nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelUBFriendsMapConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?] {
          get {
            return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
          }
          set {
            snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["UBFriendsMap"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("userId", type: .nonNull(.scalar(String.self))),
            GraphQLField("friendId", type: .nonNull(.scalar(String.self))),
            GraphQLField("circleName", type: .list(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("uBUserFriendsId", type: .scalar(GraphQLID.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, userId: String, friendId: String, circleName: [String?]? = nil, createdAt: String, updatedAt: String, uBUserFriendsId: GraphQLID? = nil) {
            self.init(snapshot: ["__typename": "UBFriendsMap", "id": id, "userId": userId, "friendId": friendId, "circleName": circleName, "createdAt": createdAt, "updatedAt": updatedAt, "uBUserFriendsId": uBUserFriendsId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var userId: String {
            get {
              return snapshot["userId"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "userId")
            }
          }

          public var friendId: String {
            get {
              return snapshot["friendId"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "friendId")
            }
          }

          public var circleName: [String?]? {
            get {
              return snapshot["circleName"] as? [String?]
            }
            set {
              snapshot.updateValue(newValue, forKey: "circleName")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var uBUserFriendsId: GraphQLID? {
            get {
              return snapshot["uBUserFriendsId"] as? GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "uBUserFriendsId")
            }
          }
        }
      }
    }
  }
}

public final class UpdateUbUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateUBUser($input: UpdateUBUserInput!, $condition: ModelUBUserConditionInput) {\n  updateUBUser(input: $input, condition: $condition) {\n    __typename\n    id\n    userId\n    email\n    displayName\n    firstName\n    lastName\n    fcmToken\n    apnsToken\n    friends {\n      __typename\n      items {\n        __typename\n        id\n        userId\n        friendId\n        circleName\n        createdAt\n        updatedAt\n        uBUserFriendsId\n      }\n      nextToken\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public var input: UpdateUBUserInput
  public var condition: ModelUBUserConditionInput?

  public init(input: UpdateUBUserInput, condition: ModelUBUserConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateUBUser", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateUbUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateUbUser: UpdateUbUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateUBUser": updateUbUser.flatMap { $0.snapshot }])
    }

    public var updateUbUser: UpdateUbUser? {
      get {
        return (snapshot["updateUBUser"] as? Snapshot).flatMap { UpdateUbUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateUBUser")
      }
    }

    public struct UpdateUbUser: GraphQLSelectionSet {
      public static let possibleTypes = ["UBUser"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("displayName", type: .scalar(String.self)),
        GraphQLField("firstName", type: .scalar(String.self)),
        GraphQLField("lastName", type: .scalar(String.self)),
        GraphQLField("fcmToken", type: .scalar(String.self)),
        GraphQLField("apnsToken", type: .scalar(String.self)),
        GraphQLField("friends", type: .object(Friend.selections)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, email: String, displayName: String? = nil, firstName: String? = nil, lastName: String? = nil, fcmToken: String? = nil, apnsToken: String? = nil, friends: Friend? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "UBUser", "id": id, "userId": userId, "email": email, "displayName": displayName, "firstName": firstName, "lastName": lastName, "fcmToken": fcmToken, "apnsToken": apnsToken, "friends": friends.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var email: String {
        get {
          return snapshot["email"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var displayName: String? {
        get {
          return snapshot["displayName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "displayName")
        }
      }

      public var firstName: String? {
        get {
          return snapshot["firstName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var lastName: String? {
        get {
          return snapshot["lastName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastName")
        }
      }

      public var fcmToken: String? {
        get {
          return snapshot["fcmToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "fcmToken")
        }
      }

      public var apnsToken: String? {
        get {
          return snapshot["apnsToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "apnsToken")
        }
      }

      public var friends: Friend? {
        get {
          return (snapshot["friends"] as? Snapshot).flatMap { Friend(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "friends")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Friend: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelUBFriendsMapConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?], nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelUBFriendsMapConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?] {
          get {
            return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
          }
          set {
            snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["UBFriendsMap"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("userId", type: .nonNull(.scalar(String.self))),
            GraphQLField("friendId", type: .nonNull(.scalar(String.self))),
            GraphQLField("circleName", type: .list(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("uBUserFriendsId", type: .scalar(GraphQLID.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, userId: String, friendId: String, circleName: [String?]? = nil, createdAt: String, updatedAt: String, uBUserFriendsId: GraphQLID? = nil) {
            self.init(snapshot: ["__typename": "UBFriendsMap", "id": id, "userId": userId, "friendId": friendId, "circleName": circleName, "createdAt": createdAt, "updatedAt": updatedAt, "uBUserFriendsId": uBUserFriendsId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var userId: String {
            get {
              return snapshot["userId"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "userId")
            }
          }

          public var friendId: String {
            get {
              return snapshot["friendId"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "friendId")
            }
          }

          public var circleName: [String?]? {
            get {
              return snapshot["circleName"] as? [String?]
            }
            set {
              snapshot.updateValue(newValue, forKey: "circleName")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var uBUserFriendsId: GraphQLID? {
            get {
              return snapshot["uBUserFriendsId"] as? GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "uBUserFriendsId")
            }
          }
        }
      }
    }
  }
}

public final class DeleteUbUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteUBUser($input: DeleteUBUserInput!, $condition: ModelUBUserConditionInput) {\n  deleteUBUser(input: $input, condition: $condition) {\n    __typename\n    id\n    userId\n    email\n    displayName\n    firstName\n    lastName\n    fcmToken\n    apnsToken\n    friends {\n      __typename\n      items {\n        __typename\n        id\n        userId\n        friendId\n        circleName\n        createdAt\n        updatedAt\n        uBUserFriendsId\n      }\n      nextToken\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public var input: DeleteUBUserInput
  public var condition: ModelUBUserConditionInput?

  public init(input: DeleteUBUserInput, condition: ModelUBUserConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteUBUser", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteUbUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteUbUser: DeleteUbUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteUBUser": deleteUbUser.flatMap { $0.snapshot }])
    }

    public var deleteUbUser: DeleteUbUser? {
      get {
        return (snapshot["deleteUBUser"] as? Snapshot).flatMap { DeleteUbUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteUBUser")
      }
    }

    public struct DeleteUbUser: GraphQLSelectionSet {
      public static let possibleTypes = ["UBUser"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("displayName", type: .scalar(String.self)),
        GraphQLField("firstName", type: .scalar(String.self)),
        GraphQLField("lastName", type: .scalar(String.self)),
        GraphQLField("fcmToken", type: .scalar(String.self)),
        GraphQLField("apnsToken", type: .scalar(String.self)),
        GraphQLField("friends", type: .object(Friend.selections)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, email: String, displayName: String? = nil, firstName: String? = nil, lastName: String? = nil, fcmToken: String? = nil, apnsToken: String? = nil, friends: Friend? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "UBUser", "id": id, "userId": userId, "email": email, "displayName": displayName, "firstName": firstName, "lastName": lastName, "fcmToken": fcmToken, "apnsToken": apnsToken, "friends": friends.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var email: String {
        get {
          return snapshot["email"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var displayName: String? {
        get {
          return snapshot["displayName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "displayName")
        }
      }

      public var firstName: String? {
        get {
          return snapshot["firstName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var lastName: String? {
        get {
          return snapshot["lastName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastName")
        }
      }

      public var fcmToken: String? {
        get {
          return snapshot["fcmToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "fcmToken")
        }
      }

      public var apnsToken: String? {
        get {
          return snapshot["apnsToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "apnsToken")
        }
      }

      public var friends: Friend? {
        get {
          return (snapshot["friends"] as? Snapshot).flatMap { Friend(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "friends")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Friend: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelUBFriendsMapConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?], nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelUBFriendsMapConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?] {
          get {
            return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
          }
          set {
            snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["UBFriendsMap"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("userId", type: .nonNull(.scalar(String.self))),
            GraphQLField("friendId", type: .nonNull(.scalar(String.self))),
            GraphQLField("circleName", type: .list(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("uBUserFriendsId", type: .scalar(GraphQLID.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, userId: String, friendId: String, circleName: [String?]? = nil, createdAt: String, updatedAt: String, uBUserFriendsId: GraphQLID? = nil) {
            self.init(snapshot: ["__typename": "UBFriendsMap", "id": id, "userId": userId, "friendId": friendId, "circleName": circleName, "createdAt": createdAt, "updatedAt": updatedAt, "uBUserFriendsId": uBUserFriendsId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var userId: String {
            get {
              return snapshot["userId"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "userId")
            }
          }

          public var friendId: String {
            get {
              return snapshot["friendId"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "friendId")
            }
          }

          public var circleName: [String?]? {
            get {
              return snapshot["circleName"] as? [String?]
            }
            set {
              snapshot.updateValue(newValue, forKey: "circleName")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var uBUserFriendsId: GraphQLID? {
            get {
              return snapshot["uBUserFriendsId"] as? GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "uBUserFriendsId")
            }
          }
        }
      }
    }
  }
}

public final class CreateUbFriendsMapMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateUBFriendsMap($input: CreateUBFriendsMapInput!, $condition: ModelUBFriendsMapConditionInput) {\n  createUBFriendsMap(input: $input, condition: $condition) {\n    __typename\n    id\n    userId\n    friendId\n    circleName\n    createdAt\n    updatedAt\n    uBUserFriendsId\n  }\n}"

  public var input: CreateUBFriendsMapInput
  public var condition: ModelUBFriendsMapConditionInput?

  public init(input: CreateUBFriendsMapInput, condition: ModelUBFriendsMapConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createUBFriendsMap", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateUbFriendsMap.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createUbFriendsMap: CreateUbFriendsMap? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createUBFriendsMap": createUbFriendsMap.flatMap { $0.snapshot }])
    }

    public var createUbFriendsMap: CreateUbFriendsMap? {
      get {
        return (snapshot["createUBFriendsMap"] as? Snapshot).flatMap { CreateUbFriendsMap(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createUBFriendsMap")
      }
    }

    public struct CreateUbFriendsMap: GraphQLSelectionSet {
      public static let possibleTypes = ["UBFriendsMap"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("friendId", type: .nonNull(.scalar(String.self))),
        GraphQLField("circleName", type: .list(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("uBUserFriendsId", type: .scalar(GraphQLID.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, friendId: String, circleName: [String?]? = nil, createdAt: String, updatedAt: String, uBUserFriendsId: GraphQLID? = nil) {
        self.init(snapshot: ["__typename": "UBFriendsMap", "id": id, "userId": userId, "friendId": friendId, "circleName": circleName, "createdAt": createdAt, "updatedAt": updatedAt, "uBUserFriendsId": uBUserFriendsId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var friendId: String {
        get {
          return snapshot["friendId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "friendId")
        }
      }

      public var circleName: [String?]? {
        get {
          return snapshot["circleName"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "circleName")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var uBUserFriendsId: GraphQLID? {
        get {
          return snapshot["uBUserFriendsId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "uBUserFriendsId")
        }
      }
    }
  }
}

public final class UpdateUbFriendsMapMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateUBFriendsMap($input: UpdateUBFriendsMapInput!, $condition: ModelUBFriendsMapConditionInput) {\n  updateUBFriendsMap(input: $input, condition: $condition) {\n    __typename\n    id\n    userId\n    friendId\n    circleName\n    createdAt\n    updatedAt\n    uBUserFriendsId\n  }\n}"

  public var input: UpdateUBFriendsMapInput
  public var condition: ModelUBFriendsMapConditionInput?

  public init(input: UpdateUBFriendsMapInput, condition: ModelUBFriendsMapConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateUBFriendsMap", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateUbFriendsMap.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateUbFriendsMap: UpdateUbFriendsMap? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateUBFriendsMap": updateUbFriendsMap.flatMap { $0.snapshot }])
    }

    public var updateUbFriendsMap: UpdateUbFriendsMap? {
      get {
        return (snapshot["updateUBFriendsMap"] as? Snapshot).flatMap { UpdateUbFriendsMap(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateUBFriendsMap")
      }
    }

    public struct UpdateUbFriendsMap: GraphQLSelectionSet {
      public static let possibleTypes = ["UBFriendsMap"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("friendId", type: .nonNull(.scalar(String.self))),
        GraphQLField("circleName", type: .list(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("uBUserFriendsId", type: .scalar(GraphQLID.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, friendId: String, circleName: [String?]? = nil, createdAt: String, updatedAt: String, uBUserFriendsId: GraphQLID? = nil) {
        self.init(snapshot: ["__typename": "UBFriendsMap", "id": id, "userId": userId, "friendId": friendId, "circleName": circleName, "createdAt": createdAt, "updatedAt": updatedAt, "uBUserFriendsId": uBUserFriendsId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var friendId: String {
        get {
          return snapshot["friendId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "friendId")
        }
      }

      public var circleName: [String?]? {
        get {
          return snapshot["circleName"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "circleName")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var uBUserFriendsId: GraphQLID? {
        get {
          return snapshot["uBUserFriendsId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "uBUserFriendsId")
        }
      }
    }
  }
}

public final class DeleteUbFriendsMapMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteUBFriendsMap($input: DeleteUBFriendsMapInput!, $condition: ModelUBFriendsMapConditionInput) {\n  deleteUBFriendsMap(input: $input, condition: $condition) {\n    __typename\n    id\n    userId\n    friendId\n    circleName\n    createdAt\n    updatedAt\n    uBUserFriendsId\n  }\n}"

  public var input: DeleteUBFriendsMapInput
  public var condition: ModelUBFriendsMapConditionInput?

  public init(input: DeleteUBFriendsMapInput, condition: ModelUBFriendsMapConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteUBFriendsMap", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteUbFriendsMap.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteUbFriendsMap: DeleteUbFriendsMap? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteUBFriendsMap": deleteUbFriendsMap.flatMap { $0.snapshot }])
    }

    public var deleteUbFriendsMap: DeleteUbFriendsMap? {
      get {
        return (snapshot["deleteUBFriendsMap"] as? Snapshot).flatMap { DeleteUbFriendsMap(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteUBFriendsMap")
      }
    }

    public struct DeleteUbFriendsMap: GraphQLSelectionSet {
      public static let possibleTypes = ["UBFriendsMap"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("friendId", type: .nonNull(.scalar(String.self))),
        GraphQLField("circleName", type: .list(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("uBUserFriendsId", type: .scalar(GraphQLID.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, friendId: String, circleName: [String?]? = nil, createdAt: String, updatedAt: String, uBUserFriendsId: GraphQLID? = nil) {
        self.init(snapshot: ["__typename": "UBFriendsMap", "id": id, "userId": userId, "friendId": friendId, "circleName": circleName, "createdAt": createdAt, "updatedAt": updatedAt, "uBUserFriendsId": uBUserFriendsId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var friendId: String {
        get {
          return snapshot["friendId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "friendId")
        }
      }

      public var circleName: [String?]? {
        get {
          return snapshot["circleName"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "circleName")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var uBUserFriendsId: GraphQLID? {
        get {
          return snapshot["uBUserFriendsId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "uBUserFriendsId")
        }
      }
    }
  }
}

public final class GetUbEventQuery: GraphQLQuery {
  public static let operationString =
    "query GetUBEvent($id: ID!, $state: Int!) {\n  getUBEvent(id: $id, state: $state) {\n    __typename\n    id\n    itemid\n    ownerid\n    receiverid\n    state\n    createdAt\n    updatedAt\n  }\n}"

  public var id: GraphQLID
  public var state: Int

  public init(id: GraphQLID, state: Int) {
    self.id = id
    self.state = state
  }

  public var variables: GraphQLMap? {
    return ["id": id, "state": state]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getUBEvent", arguments: ["id": GraphQLVariable("id"), "state": GraphQLVariable("state")], type: .object(GetUbEvent.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getUbEvent: GetUbEvent? = nil) {
      self.init(snapshot: ["__typename": "Query", "getUBEvent": getUbEvent.flatMap { $0.snapshot }])
    }

    public var getUbEvent: GetUbEvent? {
      get {
        return (snapshot["getUBEvent"] as? Snapshot).flatMap { GetUbEvent(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getUBEvent")
      }
    }

    public struct GetUbEvent: GraphQLSelectionSet {
      public static let possibleTypes = ["UBEvent"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("itemid", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("ownerid", type: .nonNull(.scalar(String.self))),
        GraphQLField("receiverid", type: .nonNull(.scalar(String.self))),
        GraphQLField("state", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, itemid: GraphQLID, ownerid: String, receiverid: String, state: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "UBEvent", "id": id, "itemid": itemid, "ownerid": ownerid, "receiverid": receiverid, "state": state, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var itemid: GraphQLID {
        get {
          return snapshot["itemid"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "itemid")
        }
      }

      public var ownerid: String {
        get {
          return snapshot["ownerid"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ownerid")
        }
      }

      public var receiverid: String {
        get {
          return snapshot["receiverid"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "receiverid")
        }
      }

      public var state: Int {
        get {
          return snapshot["state"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "state")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class ListUbEventsQuery: GraphQLQuery {
  public static let operationString =
    "query ListUBEvents($id: ID, $state: ModelIntKeyConditionInput, $filter: ModelUBEventFilterInput, $limit: Int, $nextToken: String, $sortDirection: ModelSortDirection) {\n  listUBEvents(id: $id, state: $state, filter: $filter, limit: $limit, nextToken: $nextToken, sortDirection: $sortDirection) {\n    __typename\n    items {\n      __typename\n      id\n      itemid\n      ownerid\n      receiverid\n      state\n      createdAt\n      updatedAt\n    }\n    nextToken\n  }\n}"

  public var id: GraphQLID?
  public var state: ModelIntKeyConditionInput?
  public var filter: ModelUBEventFilterInput?
  public var limit: Int?
  public var nextToken: String?
  public var sortDirection: ModelSortDirection?

  public init(id: GraphQLID? = nil, state: ModelIntKeyConditionInput? = nil, filter: ModelUBEventFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil, sortDirection: ModelSortDirection? = nil) {
    self.id = id
    self.state = state
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
    self.sortDirection = sortDirection
  }

  public var variables: GraphQLMap? {
    return ["id": id, "state": state, "filter": filter, "limit": limit, "nextToken": nextToken, "sortDirection": sortDirection]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listUBEvents", arguments: ["id": GraphQLVariable("id"), "state": GraphQLVariable("state"), "filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken"), "sortDirection": GraphQLVariable("sortDirection")], type: .object(ListUbEvent.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listUbEvents: ListUbEvent? = nil) {
      self.init(snapshot: ["__typename": "Query", "listUBEvents": listUbEvents.flatMap { $0.snapshot }])
    }

    public var listUbEvents: ListUbEvent? {
      get {
        return (snapshot["listUBEvents"] as? Snapshot).flatMap { ListUbEvent(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listUBEvents")
      }
    }

    public struct ListUbEvent: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelUBEventConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?], nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelUBEventConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?] {
        get {
          return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["UBEvent"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("itemid", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("ownerid", type: .nonNull(.scalar(String.self))),
          GraphQLField("receiverid", type: .nonNull(.scalar(String.self))),
          GraphQLField("state", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, itemid: GraphQLID, ownerid: String, receiverid: String, state: Int, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "UBEvent", "id": id, "itemid": itemid, "ownerid": ownerid, "receiverid": receiverid, "state": state, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var itemid: GraphQLID {
          get {
            return snapshot["itemid"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "itemid")
          }
        }

        public var ownerid: String {
          get {
            return snapshot["ownerid"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "ownerid")
          }
        }

        public var receiverid: String {
          get {
            return snapshot["receiverid"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "receiverid")
          }
        }

        public var state: Int {
          get {
            return snapshot["state"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "state")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class GetUbUserQuery: GraphQLQuery {
  public static let operationString =
    "query GetUBUser($userId: String!) {\n  getUBUser(userId: $userId) {\n    __typename\n    id\n    userId\n    email\n    displayName\n    firstName\n    lastName\n    fcmToken\n    apnsToken\n    friends {\n      __typename\n      items {\n        __typename\n        id\n        userId\n        friendId\n        circleName\n        createdAt\n        updatedAt\n        uBUserFriendsId\n      }\n      nextToken\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public var userId: String

  public init(userId: String) {
    self.userId = userId
  }

  public var variables: GraphQLMap? {
    return ["userId": userId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getUBUser", arguments: ["userId": GraphQLVariable("userId")], type: .object(GetUbUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getUbUser: GetUbUser? = nil) {
      self.init(snapshot: ["__typename": "Query", "getUBUser": getUbUser.flatMap { $0.snapshot }])
    }

    public var getUbUser: GetUbUser? {
      get {
        return (snapshot["getUBUser"] as? Snapshot).flatMap { GetUbUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getUBUser")
      }
    }

    public struct GetUbUser: GraphQLSelectionSet {
      public static let possibleTypes = ["UBUser"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("displayName", type: .scalar(String.self)),
        GraphQLField("firstName", type: .scalar(String.self)),
        GraphQLField("lastName", type: .scalar(String.self)),
        GraphQLField("fcmToken", type: .scalar(String.self)),
        GraphQLField("apnsToken", type: .scalar(String.self)),
        GraphQLField("friends", type: .object(Friend.selections)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, email: String, displayName: String? = nil, firstName: String? = nil, lastName: String? = nil, fcmToken: String? = nil, apnsToken: String? = nil, friends: Friend? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "UBUser", "id": id, "userId": userId, "email": email, "displayName": displayName, "firstName": firstName, "lastName": lastName, "fcmToken": fcmToken, "apnsToken": apnsToken, "friends": friends.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var email: String {
        get {
          return snapshot["email"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var displayName: String? {
        get {
          return snapshot["displayName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "displayName")
        }
      }

      public var firstName: String? {
        get {
          return snapshot["firstName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var lastName: String? {
        get {
          return snapshot["lastName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastName")
        }
      }

      public var fcmToken: String? {
        get {
          return snapshot["fcmToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "fcmToken")
        }
      }

      public var apnsToken: String? {
        get {
          return snapshot["apnsToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "apnsToken")
        }
      }

      public var friends: Friend? {
        get {
          return (snapshot["friends"] as? Snapshot).flatMap { Friend(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "friends")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Friend: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelUBFriendsMapConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?], nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelUBFriendsMapConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?] {
          get {
            return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
          }
          set {
            snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["UBFriendsMap"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("userId", type: .nonNull(.scalar(String.self))),
            GraphQLField("friendId", type: .nonNull(.scalar(String.self))),
            GraphQLField("circleName", type: .list(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("uBUserFriendsId", type: .scalar(GraphQLID.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, userId: String, friendId: String, circleName: [String?]? = nil, createdAt: String, updatedAt: String, uBUserFriendsId: GraphQLID? = nil) {
            self.init(snapshot: ["__typename": "UBFriendsMap", "id": id, "userId": userId, "friendId": friendId, "circleName": circleName, "createdAt": createdAt, "updatedAt": updatedAt, "uBUserFriendsId": uBUserFriendsId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var userId: String {
            get {
              return snapshot["userId"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "userId")
            }
          }

          public var friendId: String {
            get {
              return snapshot["friendId"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "friendId")
            }
          }

          public var circleName: [String?]? {
            get {
              return snapshot["circleName"] as? [String?]
            }
            set {
              snapshot.updateValue(newValue, forKey: "circleName")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var uBUserFriendsId: GraphQLID? {
            get {
              return snapshot["uBUserFriendsId"] as? GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "uBUserFriendsId")
            }
          }
        }
      }
    }
  }
}

public final class ListUbUsersQuery: GraphQLQuery {
  public static let operationString =
    "query ListUBUsers($userId: String, $filter: ModelUBUserFilterInput, $limit: Int, $nextToken: String, $sortDirection: ModelSortDirection) {\n  listUBUsers(userId: $userId, filter: $filter, limit: $limit, nextToken: $nextToken, sortDirection: $sortDirection) {\n    __typename\n    items {\n      __typename\n      id\n      userId\n      email\n      displayName\n      firstName\n      lastName\n      fcmToken\n      apnsToken\n      friends {\n        __typename\n        nextToken\n      }\n      createdAt\n      updatedAt\n    }\n    nextToken\n  }\n}"

  public var userId: String?
  public var filter: ModelUBUserFilterInput?
  public var limit: Int?
  public var nextToken: String?
  public var sortDirection: ModelSortDirection?

  public init(userId: String? = nil, filter: ModelUBUserFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil, sortDirection: ModelSortDirection? = nil) {
    self.userId = userId
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
    self.sortDirection = sortDirection
  }

  public var variables: GraphQLMap? {
    return ["userId": userId, "filter": filter, "limit": limit, "nextToken": nextToken, "sortDirection": sortDirection]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listUBUsers", arguments: ["userId": GraphQLVariable("userId"), "filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken"), "sortDirection": GraphQLVariable("sortDirection")], type: .object(ListUbUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listUbUsers: ListUbUser? = nil) {
      self.init(snapshot: ["__typename": "Query", "listUBUsers": listUbUsers.flatMap { $0.snapshot }])
    }

    public var listUbUsers: ListUbUser? {
      get {
        return (snapshot["listUBUsers"] as? Snapshot).flatMap { ListUbUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listUBUsers")
      }
    }

    public struct ListUbUser: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelUBUserConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?], nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelUBUserConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?] {
        get {
          return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["UBUser"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("userId", type: .nonNull(.scalar(String.self))),
          GraphQLField("email", type: .nonNull(.scalar(String.self))),
          GraphQLField("displayName", type: .scalar(String.self)),
          GraphQLField("firstName", type: .scalar(String.self)),
          GraphQLField("lastName", type: .scalar(String.self)),
          GraphQLField("fcmToken", type: .scalar(String.self)),
          GraphQLField("apnsToken", type: .scalar(String.self)),
          GraphQLField("friends", type: .object(Friend.selections)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, userId: String, email: String, displayName: String? = nil, firstName: String? = nil, lastName: String? = nil, fcmToken: String? = nil, apnsToken: String? = nil, friends: Friend? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "UBUser", "id": id, "userId": userId, "email": email, "displayName": displayName, "firstName": firstName, "lastName": lastName, "fcmToken": fcmToken, "apnsToken": apnsToken, "friends": friends.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var userId: String {
          get {
            return snapshot["userId"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "userId")
          }
        }

        public var email: String {
          get {
            return snapshot["email"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "email")
          }
        }

        public var displayName: String? {
          get {
            return snapshot["displayName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "displayName")
          }
        }

        public var firstName: String? {
          get {
            return snapshot["firstName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "firstName")
          }
        }

        public var lastName: String? {
          get {
            return snapshot["lastName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "lastName")
          }
        }

        public var fcmToken: String? {
          get {
            return snapshot["fcmToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "fcmToken")
          }
        }

        public var apnsToken: String? {
          get {
            return snapshot["apnsToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "apnsToken")
          }
        }

        public var friends: Friend? {
          get {
            return (snapshot["friends"] as? Snapshot).flatMap { Friend(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "friends")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Friend: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelUBFriendsMapConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelUBFriendsMapConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }
    }
  }
}

public final class GetUbFriendsMapQuery: GraphQLQuery {
  public static let operationString =
    "query GetUBFriendsMap($userId: String!, $friendId: String!) {\n  getUBFriendsMap(userId: $userId, friendId: $friendId) {\n    __typename\n    id\n    userId\n    friendId\n    circleName\n    createdAt\n    updatedAt\n    uBUserFriendsId\n  }\n}"

  public var userId: String
  public var friendId: String

  public init(userId: String, friendId: String) {
    self.userId = userId
    self.friendId = friendId
  }

  public var variables: GraphQLMap? {
    return ["userId": userId, "friendId": friendId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getUBFriendsMap", arguments: ["userId": GraphQLVariable("userId"), "friendId": GraphQLVariable("friendId")], type: .object(GetUbFriendsMap.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getUbFriendsMap: GetUbFriendsMap? = nil) {
      self.init(snapshot: ["__typename": "Query", "getUBFriendsMap": getUbFriendsMap.flatMap { $0.snapshot }])
    }

    public var getUbFriendsMap: GetUbFriendsMap? {
      get {
        return (snapshot["getUBFriendsMap"] as? Snapshot).flatMap { GetUbFriendsMap(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getUBFriendsMap")
      }
    }

    public struct GetUbFriendsMap: GraphQLSelectionSet {
      public static let possibleTypes = ["UBFriendsMap"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("friendId", type: .nonNull(.scalar(String.self))),
        GraphQLField("circleName", type: .list(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("uBUserFriendsId", type: .scalar(GraphQLID.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, friendId: String, circleName: [String?]? = nil, createdAt: String, updatedAt: String, uBUserFriendsId: GraphQLID? = nil) {
        self.init(snapshot: ["__typename": "UBFriendsMap", "id": id, "userId": userId, "friendId": friendId, "circleName": circleName, "createdAt": createdAt, "updatedAt": updatedAt, "uBUserFriendsId": uBUserFriendsId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var friendId: String {
        get {
          return snapshot["friendId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "friendId")
        }
      }

      public var circleName: [String?]? {
        get {
          return snapshot["circleName"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "circleName")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var uBUserFriendsId: GraphQLID? {
        get {
          return snapshot["uBUserFriendsId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "uBUserFriendsId")
        }
      }
    }
  }
}

public final class ListUbFriendsMapsQuery: GraphQLQuery {
  public static let operationString =
    "query ListUBFriendsMaps($userId: String, $friendId: ModelStringKeyConditionInput, $filter: ModelUBFriendsMapFilterInput, $limit: Int, $nextToken: String, $sortDirection: ModelSortDirection) {\n  listUBFriendsMaps(userId: $userId, friendId: $friendId, filter: $filter, limit: $limit, nextToken: $nextToken, sortDirection: $sortDirection) {\n    __typename\n    items {\n      __typename\n      id\n      userId\n      friendId\n      circleName\n      createdAt\n      updatedAt\n      uBUserFriendsId\n    }\n    nextToken\n  }\n}"

  public var userId: String?
  public var friendId: ModelStringKeyConditionInput?
  public var filter: ModelUBFriendsMapFilterInput?
  public var limit: Int?
  public var nextToken: String?
  public var sortDirection: ModelSortDirection?

  public init(userId: String? = nil, friendId: ModelStringKeyConditionInput? = nil, filter: ModelUBFriendsMapFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil, sortDirection: ModelSortDirection? = nil) {
    self.userId = userId
    self.friendId = friendId
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
    self.sortDirection = sortDirection
  }

  public var variables: GraphQLMap? {
    return ["userId": userId, "friendId": friendId, "filter": filter, "limit": limit, "nextToken": nextToken, "sortDirection": sortDirection]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listUBFriendsMaps", arguments: ["userId": GraphQLVariable("userId"), "friendId": GraphQLVariable("friendId"), "filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken"), "sortDirection": GraphQLVariable("sortDirection")], type: .object(ListUbFriendsMap.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listUbFriendsMaps: ListUbFriendsMap? = nil) {
      self.init(snapshot: ["__typename": "Query", "listUBFriendsMaps": listUbFriendsMaps.flatMap { $0.snapshot }])
    }

    public var listUbFriendsMaps: ListUbFriendsMap? {
      get {
        return (snapshot["listUBFriendsMaps"] as? Snapshot).flatMap { ListUbFriendsMap(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listUBFriendsMaps")
      }
    }

    public struct ListUbFriendsMap: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelUBFriendsMapConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?], nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelUBFriendsMapConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?] {
        get {
          return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["UBFriendsMap"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("userId", type: .nonNull(.scalar(String.self))),
          GraphQLField("friendId", type: .nonNull(.scalar(String.self))),
          GraphQLField("circleName", type: .list(.scalar(String.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("uBUserFriendsId", type: .scalar(GraphQLID.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, userId: String, friendId: String, circleName: [String?]? = nil, createdAt: String, updatedAt: String, uBUserFriendsId: GraphQLID? = nil) {
          self.init(snapshot: ["__typename": "UBFriendsMap", "id": id, "userId": userId, "friendId": friendId, "circleName": circleName, "createdAt": createdAt, "updatedAt": updatedAt, "uBUserFriendsId": uBUserFriendsId])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var userId: String {
          get {
            return snapshot["userId"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "userId")
          }
        }

        public var friendId: String {
          get {
            return snapshot["friendId"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "friendId")
          }
        }

        public var circleName: [String?]? {
          get {
            return snapshot["circleName"] as? [String?]
          }
          set {
            snapshot.updateValue(newValue, forKey: "circleName")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var uBUserFriendsId: GraphQLID? {
          get {
            return snapshot["uBUserFriendsId"] as? GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "uBUserFriendsId")
          }
        }
      }
    }
  }
}

public final class EventsByOwnerQuery: GraphQLQuery {
  public static let operationString =
    "query EventsByOwner($ownerid: String!, $sortDirection: ModelSortDirection, $filter: ModelUBEventFilterInput, $limit: Int, $nextToken: String) {\n  eventsByOwner(ownerid: $ownerid, sortDirection: $sortDirection, filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      itemid\n      ownerid\n      receiverid\n      state\n      createdAt\n      updatedAt\n    }\n    nextToken\n  }\n}"

  public var ownerid: String
  public var sortDirection: ModelSortDirection?
  public var filter: ModelUBEventFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(ownerid: String, sortDirection: ModelSortDirection? = nil, filter: ModelUBEventFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.ownerid = ownerid
    self.sortDirection = sortDirection
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["ownerid": ownerid, "sortDirection": sortDirection, "filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("eventsByOwner", arguments: ["ownerid": GraphQLVariable("ownerid"), "sortDirection": GraphQLVariable("sortDirection"), "filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(EventsByOwner.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(eventsByOwner: EventsByOwner? = nil) {
      self.init(snapshot: ["__typename": "Query", "eventsByOwner": eventsByOwner.flatMap { $0.snapshot }])
    }

    public var eventsByOwner: EventsByOwner? {
      get {
        return (snapshot["eventsByOwner"] as? Snapshot).flatMap { EventsByOwner(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "eventsByOwner")
      }
    }

    public struct EventsByOwner: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelUBEventConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?], nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelUBEventConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?] {
        get {
          return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["UBEvent"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("itemid", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("ownerid", type: .nonNull(.scalar(String.self))),
          GraphQLField("receiverid", type: .nonNull(.scalar(String.self))),
          GraphQLField("state", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, itemid: GraphQLID, ownerid: String, receiverid: String, state: Int, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "UBEvent", "id": id, "itemid": itemid, "ownerid": ownerid, "receiverid": receiverid, "state": state, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var itemid: GraphQLID {
          get {
            return snapshot["itemid"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "itemid")
          }
        }

        public var ownerid: String {
          get {
            return snapshot["ownerid"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "ownerid")
          }
        }

        public var receiverid: String {
          get {
            return snapshot["receiverid"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "receiverid")
          }
        }

        public var state: Int {
          get {
            return snapshot["state"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "state")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class EventsByReceiverQuery: GraphQLQuery {
  public static let operationString =
    "query EventsByReceiver($receiverid: String!, $sortDirection: ModelSortDirection, $filter: ModelUBEventFilterInput, $limit: Int, $nextToken: String) {\n  eventsByReceiver(receiverid: $receiverid, sortDirection: $sortDirection, filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      itemid\n      ownerid\n      receiverid\n      state\n      createdAt\n      updatedAt\n    }\n    nextToken\n  }\n}"

  public var receiverid: String
  public var sortDirection: ModelSortDirection?
  public var filter: ModelUBEventFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(receiverid: String, sortDirection: ModelSortDirection? = nil, filter: ModelUBEventFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.receiverid = receiverid
    self.sortDirection = sortDirection
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["receiverid": receiverid, "sortDirection": sortDirection, "filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("eventsByReceiver", arguments: ["receiverid": GraphQLVariable("receiverid"), "sortDirection": GraphQLVariable("sortDirection"), "filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(EventsByReceiver.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(eventsByReceiver: EventsByReceiver? = nil) {
      self.init(snapshot: ["__typename": "Query", "eventsByReceiver": eventsByReceiver.flatMap { $0.snapshot }])
    }

    public var eventsByReceiver: EventsByReceiver? {
      get {
        return (snapshot["eventsByReceiver"] as? Snapshot).flatMap { EventsByReceiver(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "eventsByReceiver")
      }
    }

    public struct EventsByReceiver: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelUBEventConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?], nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelUBEventConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?] {
        get {
          return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["UBEvent"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("itemid", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("ownerid", type: .nonNull(.scalar(String.self))),
          GraphQLField("receiverid", type: .nonNull(.scalar(String.self))),
          GraphQLField("state", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, itemid: GraphQLID, ownerid: String, receiverid: String, state: Int, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "UBEvent", "id": id, "itemid": itemid, "ownerid": ownerid, "receiverid": receiverid, "state": state, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var itemid: GraphQLID {
          get {
            return snapshot["itemid"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "itemid")
          }
        }

        public var ownerid: String {
          get {
            return snapshot["ownerid"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "ownerid")
          }
        }

        public var receiverid: String {
          get {
            return snapshot["receiverid"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "receiverid")
          }
        }

        public var state: Int {
          get {
            return snapshot["state"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "state")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class OnCreateUbEventSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateUBEvent($filter: ModelSubscriptionUBEventFilterInput) {\n  onCreateUBEvent(filter: $filter) {\n    __typename\n    id\n    itemid\n    ownerid\n    receiverid\n    state\n    createdAt\n    updatedAt\n  }\n}"

  public var filter: ModelSubscriptionUBEventFilterInput?

  public init(filter: ModelSubscriptionUBEventFilterInput? = nil) {
    self.filter = filter
  }

  public var variables: GraphQLMap? {
    return ["filter": filter]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateUBEvent", arguments: ["filter": GraphQLVariable("filter")], type: .object(OnCreateUbEvent.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateUbEvent: OnCreateUbEvent? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateUBEvent": onCreateUbEvent.flatMap { $0.snapshot }])
    }

    public var onCreateUbEvent: OnCreateUbEvent? {
      get {
        return (snapshot["onCreateUBEvent"] as? Snapshot).flatMap { OnCreateUbEvent(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateUBEvent")
      }
    }

    public struct OnCreateUbEvent: GraphQLSelectionSet {
      public static let possibleTypes = ["UBEvent"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("itemid", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("ownerid", type: .nonNull(.scalar(String.self))),
        GraphQLField("receiverid", type: .nonNull(.scalar(String.self))),
        GraphQLField("state", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, itemid: GraphQLID, ownerid: String, receiverid: String, state: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "UBEvent", "id": id, "itemid": itemid, "ownerid": ownerid, "receiverid": receiverid, "state": state, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var itemid: GraphQLID {
        get {
          return snapshot["itemid"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "itemid")
        }
      }

      public var ownerid: String {
        get {
          return snapshot["ownerid"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ownerid")
        }
      }

      public var receiverid: String {
        get {
          return snapshot["receiverid"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "receiverid")
        }
      }

      public var state: Int {
        get {
          return snapshot["state"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "state")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnUpdateUbEventSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateUBEvent($filter: ModelSubscriptionUBEventFilterInput) {\n  onUpdateUBEvent(filter: $filter) {\n    __typename\n    id\n    itemid\n    ownerid\n    receiverid\n    state\n    createdAt\n    updatedAt\n  }\n}"

  public var filter: ModelSubscriptionUBEventFilterInput?

  public init(filter: ModelSubscriptionUBEventFilterInput? = nil) {
    self.filter = filter
  }

  public var variables: GraphQLMap? {
    return ["filter": filter]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateUBEvent", arguments: ["filter": GraphQLVariable("filter")], type: .object(OnUpdateUbEvent.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateUbEvent: OnUpdateUbEvent? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateUBEvent": onUpdateUbEvent.flatMap { $0.snapshot }])
    }

    public var onUpdateUbEvent: OnUpdateUbEvent? {
      get {
        return (snapshot["onUpdateUBEvent"] as? Snapshot).flatMap { OnUpdateUbEvent(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateUBEvent")
      }
    }

    public struct OnUpdateUbEvent: GraphQLSelectionSet {
      public static let possibleTypes = ["UBEvent"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("itemid", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("ownerid", type: .nonNull(.scalar(String.self))),
        GraphQLField("receiverid", type: .nonNull(.scalar(String.self))),
        GraphQLField("state", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, itemid: GraphQLID, ownerid: String, receiverid: String, state: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "UBEvent", "id": id, "itemid": itemid, "ownerid": ownerid, "receiverid": receiverid, "state": state, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var itemid: GraphQLID {
        get {
          return snapshot["itemid"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "itemid")
        }
      }

      public var ownerid: String {
        get {
          return snapshot["ownerid"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ownerid")
        }
      }

      public var receiverid: String {
        get {
          return snapshot["receiverid"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "receiverid")
        }
      }

      public var state: Int {
        get {
          return snapshot["state"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "state")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnDeleteUbEventSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteUBEvent($filter: ModelSubscriptionUBEventFilterInput) {\n  onDeleteUBEvent(filter: $filter) {\n    __typename\n    id\n    itemid\n    ownerid\n    receiverid\n    state\n    createdAt\n    updatedAt\n  }\n}"

  public var filter: ModelSubscriptionUBEventFilterInput?

  public init(filter: ModelSubscriptionUBEventFilterInput? = nil) {
    self.filter = filter
  }

  public var variables: GraphQLMap? {
    return ["filter": filter]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteUBEvent", arguments: ["filter": GraphQLVariable("filter")], type: .object(OnDeleteUbEvent.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteUbEvent: OnDeleteUbEvent? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteUBEvent": onDeleteUbEvent.flatMap { $0.snapshot }])
    }

    public var onDeleteUbEvent: OnDeleteUbEvent? {
      get {
        return (snapshot["onDeleteUBEvent"] as? Snapshot).flatMap { OnDeleteUbEvent(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteUBEvent")
      }
    }

    public struct OnDeleteUbEvent: GraphQLSelectionSet {
      public static let possibleTypes = ["UBEvent"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("itemid", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("ownerid", type: .nonNull(.scalar(String.self))),
        GraphQLField("receiverid", type: .nonNull(.scalar(String.self))),
        GraphQLField("state", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, itemid: GraphQLID, ownerid: String, receiverid: String, state: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "UBEvent", "id": id, "itemid": itemid, "ownerid": ownerid, "receiverid": receiverid, "state": state, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var itemid: GraphQLID {
        get {
          return snapshot["itemid"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "itemid")
        }
      }

      public var ownerid: String {
        get {
          return snapshot["ownerid"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ownerid")
        }
      }

      public var receiverid: String {
        get {
          return snapshot["receiverid"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "receiverid")
        }
      }

      public var state: Int {
        get {
          return snapshot["state"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "state")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnCreateUbUserSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateUBUser($filter: ModelSubscriptionUBUserFilterInput) {\n  onCreateUBUser(filter: $filter) {\n    __typename\n    id\n    userId\n    email\n    displayName\n    firstName\n    lastName\n    fcmToken\n    apnsToken\n    friends {\n      __typename\n      items {\n        __typename\n        id\n        userId\n        friendId\n        circleName\n        createdAt\n        updatedAt\n        uBUserFriendsId\n      }\n      nextToken\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public var filter: ModelSubscriptionUBUserFilterInput?

  public init(filter: ModelSubscriptionUBUserFilterInput? = nil) {
    self.filter = filter
  }

  public var variables: GraphQLMap? {
    return ["filter": filter]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateUBUser", arguments: ["filter": GraphQLVariable("filter")], type: .object(OnCreateUbUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateUbUser: OnCreateUbUser? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateUBUser": onCreateUbUser.flatMap { $0.snapshot }])
    }

    public var onCreateUbUser: OnCreateUbUser? {
      get {
        return (snapshot["onCreateUBUser"] as? Snapshot).flatMap { OnCreateUbUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateUBUser")
      }
    }

    public struct OnCreateUbUser: GraphQLSelectionSet {
      public static let possibleTypes = ["UBUser"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("displayName", type: .scalar(String.self)),
        GraphQLField("firstName", type: .scalar(String.self)),
        GraphQLField("lastName", type: .scalar(String.self)),
        GraphQLField("fcmToken", type: .scalar(String.self)),
        GraphQLField("apnsToken", type: .scalar(String.self)),
        GraphQLField("friends", type: .object(Friend.selections)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, email: String, displayName: String? = nil, firstName: String? = nil, lastName: String? = nil, fcmToken: String? = nil, apnsToken: String? = nil, friends: Friend? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "UBUser", "id": id, "userId": userId, "email": email, "displayName": displayName, "firstName": firstName, "lastName": lastName, "fcmToken": fcmToken, "apnsToken": apnsToken, "friends": friends.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var email: String {
        get {
          return snapshot["email"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var displayName: String? {
        get {
          return snapshot["displayName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "displayName")
        }
      }

      public var firstName: String? {
        get {
          return snapshot["firstName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var lastName: String? {
        get {
          return snapshot["lastName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastName")
        }
      }

      public var fcmToken: String? {
        get {
          return snapshot["fcmToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "fcmToken")
        }
      }

      public var apnsToken: String? {
        get {
          return snapshot["apnsToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "apnsToken")
        }
      }

      public var friends: Friend? {
        get {
          return (snapshot["friends"] as? Snapshot).flatMap { Friend(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "friends")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Friend: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelUBFriendsMapConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?], nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelUBFriendsMapConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?] {
          get {
            return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
          }
          set {
            snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["UBFriendsMap"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("userId", type: .nonNull(.scalar(String.self))),
            GraphQLField("friendId", type: .nonNull(.scalar(String.self))),
            GraphQLField("circleName", type: .list(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("uBUserFriendsId", type: .scalar(GraphQLID.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, userId: String, friendId: String, circleName: [String?]? = nil, createdAt: String, updatedAt: String, uBUserFriendsId: GraphQLID? = nil) {
            self.init(snapshot: ["__typename": "UBFriendsMap", "id": id, "userId": userId, "friendId": friendId, "circleName": circleName, "createdAt": createdAt, "updatedAt": updatedAt, "uBUserFriendsId": uBUserFriendsId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var userId: String {
            get {
              return snapshot["userId"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "userId")
            }
          }

          public var friendId: String {
            get {
              return snapshot["friendId"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "friendId")
            }
          }

          public var circleName: [String?]? {
            get {
              return snapshot["circleName"] as? [String?]
            }
            set {
              snapshot.updateValue(newValue, forKey: "circleName")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var uBUserFriendsId: GraphQLID? {
            get {
              return snapshot["uBUserFriendsId"] as? GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "uBUserFriendsId")
            }
          }
        }
      }
    }
  }
}

public final class OnUpdateUbUserSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateUBUser($filter: ModelSubscriptionUBUserFilterInput) {\n  onUpdateUBUser(filter: $filter) {\n    __typename\n    id\n    userId\n    email\n    displayName\n    firstName\n    lastName\n    fcmToken\n    apnsToken\n    friends {\n      __typename\n      items {\n        __typename\n        id\n        userId\n        friendId\n        circleName\n        createdAt\n        updatedAt\n        uBUserFriendsId\n      }\n      nextToken\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public var filter: ModelSubscriptionUBUserFilterInput?

  public init(filter: ModelSubscriptionUBUserFilterInput? = nil) {
    self.filter = filter
  }

  public var variables: GraphQLMap? {
    return ["filter": filter]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateUBUser", arguments: ["filter": GraphQLVariable("filter")], type: .object(OnUpdateUbUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateUbUser: OnUpdateUbUser? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateUBUser": onUpdateUbUser.flatMap { $0.snapshot }])
    }

    public var onUpdateUbUser: OnUpdateUbUser? {
      get {
        return (snapshot["onUpdateUBUser"] as? Snapshot).flatMap { OnUpdateUbUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateUBUser")
      }
    }

    public struct OnUpdateUbUser: GraphQLSelectionSet {
      public static let possibleTypes = ["UBUser"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("displayName", type: .scalar(String.self)),
        GraphQLField("firstName", type: .scalar(String.self)),
        GraphQLField("lastName", type: .scalar(String.self)),
        GraphQLField("fcmToken", type: .scalar(String.self)),
        GraphQLField("apnsToken", type: .scalar(String.self)),
        GraphQLField("friends", type: .object(Friend.selections)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, email: String, displayName: String? = nil, firstName: String? = nil, lastName: String? = nil, fcmToken: String? = nil, apnsToken: String? = nil, friends: Friend? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "UBUser", "id": id, "userId": userId, "email": email, "displayName": displayName, "firstName": firstName, "lastName": lastName, "fcmToken": fcmToken, "apnsToken": apnsToken, "friends": friends.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var email: String {
        get {
          return snapshot["email"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var displayName: String? {
        get {
          return snapshot["displayName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "displayName")
        }
      }

      public var firstName: String? {
        get {
          return snapshot["firstName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var lastName: String? {
        get {
          return snapshot["lastName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastName")
        }
      }

      public var fcmToken: String? {
        get {
          return snapshot["fcmToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "fcmToken")
        }
      }

      public var apnsToken: String? {
        get {
          return snapshot["apnsToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "apnsToken")
        }
      }

      public var friends: Friend? {
        get {
          return (snapshot["friends"] as? Snapshot).flatMap { Friend(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "friends")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Friend: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelUBFriendsMapConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?], nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelUBFriendsMapConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?] {
          get {
            return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
          }
          set {
            snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["UBFriendsMap"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("userId", type: .nonNull(.scalar(String.self))),
            GraphQLField("friendId", type: .nonNull(.scalar(String.self))),
            GraphQLField("circleName", type: .list(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("uBUserFriendsId", type: .scalar(GraphQLID.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, userId: String, friendId: String, circleName: [String?]? = nil, createdAt: String, updatedAt: String, uBUserFriendsId: GraphQLID? = nil) {
            self.init(snapshot: ["__typename": "UBFriendsMap", "id": id, "userId": userId, "friendId": friendId, "circleName": circleName, "createdAt": createdAt, "updatedAt": updatedAt, "uBUserFriendsId": uBUserFriendsId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var userId: String {
            get {
              return snapshot["userId"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "userId")
            }
          }

          public var friendId: String {
            get {
              return snapshot["friendId"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "friendId")
            }
          }

          public var circleName: [String?]? {
            get {
              return snapshot["circleName"] as? [String?]
            }
            set {
              snapshot.updateValue(newValue, forKey: "circleName")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var uBUserFriendsId: GraphQLID? {
            get {
              return snapshot["uBUserFriendsId"] as? GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "uBUserFriendsId")
            }
          }
        }
      }
    }
  }
}

public final class OnDeleteUbUserSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteUBUser($filter: ModelSubscriptionUBUserFilterInput) {\n  onDeleteUBUser(filter: $filter) {\n    __typename\n    id\n    userId\n    email\n    displayName\n    firstName\n    lastName\n    fcmToken\n    apnsToken\n    friends {\n      __typename\n      items {\n        __typename\n        id\n        userId\n        friendId\n        circleName\n        createdAt\n        updatedAt\n        uBUserFriendsId\n      }\n      nextToken\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public var filter: ModelSubscriptionUBUserFilterInput?

  public init(filter: ModelSubscriptionUBUserFilterInput? = nil) {
    self.filter = filter
  }

  public var variables: GraphQLMap? {
    return ["filter": filter]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteUBUser", arguments: ["filter": GraphQLVariable("filter")], type: .object(OnDeleteUbUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteUbUser: OnDeleteUbUser? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteUBUser": onDeleteUbUser.flatMap { $0.snapshot }])
    }

    public var onDeleteUbUser: OnDeleteUbUser? {
      get {
        return (snapshot["onDeleteUBUser"] as? Snapshot).flatMap { OnDeleteUbUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteUBUser")
      }
    }

    public struct OnDeleteUbUser: GraphQLSelectionSet {
      public static let possibleTypes = ["UBUser"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("displayName", type: .scalar(String.self)),
        GraphQLField("firstName", type: .scalar(String.self)),
        GraphQLField("lastName", type: .scalar(String.self)),
        GraphQLField("fcmToken", type: .scalar(String.self)),
        GraphQLField("apnsToken", type: .scalar(String.self)),
        GraphQLField("friends", type: .object(Friend.selections)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, email: String, displayName: String? = nil, firstName: String? = nil, lastName: String? = nil, fcmToken: String? = nil, apnsToken: String? = nil, friends: Friend? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "UBUser", "id": id, "userId": userId, "email": email, "displayName": displayName, "firstName": firstName, "lastName": lastName, "fcmToken": fcmToken, "apnsToken": apnsToken, "friends": friends.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var email: String {
        get {
          return snapshot["email"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var displayName: String? {
        get {
          return snapshot["displayName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "displayName")
        }
      }

      public var firstName: String? {
        get {
          return snapshot["firstName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var lastName: String? {
        get {
          return snapshot["lastName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastName")
        }
      }

      public var fcmToken: String? {
        get {
          return snapshot["fcmToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "fcmToken")
        }
      }

      public var apnsToken: String? {
        get {
          return snapshot["apnsToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "apnsToken")
        }
      }

      public var friends: Friend? {
        get {
          return (snapshot["friends"] as? Snapshot).flatMap { Friend(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "friends")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Friend: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelUBFriendsMapConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?], nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelUBFriendsMapConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?] {
          get {
            return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
          }
          set {
            snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["UBFriendsMap"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("userId", type: .nonNull(.scalar(String.self))),
            GraphQLField("friendId", type: .nonNull(.scalar(String.self))),
            GraphQLField("circleName", type: .list(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("uBUserFriendsId", type: .scalar(GraphQLID.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, userId: String, friendId: String, circleName: [String?]? = nil, createdAt: String, updatedAt: String, uBUserFriendsId: GraphQLID? = nil) {
            self.init(snapshot: ["__typename": "UBFriendsMap", "id": id, "userId": userId, "friendId": friendId, "circleName": circleName, "createdAt": createdAt, "updatedAt": updatedAt, "uBUserFriendsId": uBUserFriendsId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var userId: String {
            get {
              return snapshot["userId"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "userId")
            }
          }

          public var friendId: String {
            get {
              return snapshot["friendId"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "friendId")
            }
          }

          public var circleName: [String?]? {
            get {
              return snapshot["circleName"] as? [String?]
            }
            set {
              snapshot.updateValue(newValue, forKey: "circleName")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var uBUserFriendsId: GraphQLID? {
            get {
              return snapshot["uBUserFriendsId"] as? GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "uBUserFriendsId")
            }
          }
        }
      }
    }
  }
}

public final class OnCreateUbFriendsMapSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateUBFriendsMap($filter: ModelSubscriptionUBFriendsMapFilterInput) {\n  onCreateUBFriendsMap(filter: $filter) {\n    __typename\n    id\n    userId\n    friendId\n    circleName\n    createdAt\n    updatedAt\n    uBUserFriendsId\n  }\n}"

  public var filter: ModelSubscriptionUBFriendsMapFilterInput?

  public init(filter: ModelSubscriptionUBFriendsMapFilterInput? = nil) {
    self.filter = filter
  }

  public var variables: GraphQLMap? {
    return ["filter": filter]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateUBFriendsMap", arguments: ["filter": GraphQLVariable("filter")], type: .object(OnCreateUbFriendsMap.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateUbFriendsMap: OnCreateUbFriendsMap? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateUBFriendsMap": onCreateUbFriendsMap.flatMap { $0.snapshot }])
    }

    public var onCreateUbFriendsMap: OnCreateUbFriendsMap? {
      get {
        return (snapshot["onCreateUBFriendsMap"] as? Snapshot).flatMap { OnCreateUbFriendsMap(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateUBFriendsMap")
      }
    }

    public struct OnCreateUbFriendsMap: GraphQLSelectionSet {
      public static let possibleTypes = ["UBFriendsMap"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("friendId", type: .nonNull(.scalar(String.self))),
        GraphQLField("circleName", type: .list(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("uBUserFriendsId", type: .scalar(GraphQLID.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, friendId: String, circleName: [String?]? = nil, createdAt: String, updatedAt: String, uBUserFriendsId: GraphQLID? = nil) {
        self.init(snapshot: ["__typename": "UBFriendsMap", "id": id, "userId": userId, "friendId": friendId, "circleName": circleName, "createdAt": createdAt, "updatedAt": updatedAt, "uBUserFriendsId": uBUserFriendsId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var friendId: String {
        get {
          return snapshot["friendId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "friendId")
        }
      }

      public var circleName: [String?]? {
        get {
          return snapshot["circleName"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "circleName")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var uBUserFriendsId: GraphQLID? {
        get {
          return snapshot["uBUserFriendsId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "uBUserFriendsId")
        }
      }
    }
  }
}

public final class OnUpdateUbFriendsMapSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateUBFriendsMap($filter: ModelSubscriptionUBFriendsMapFilterInput) {\n  onUpdateUBFriendsMap(filter: $filter) {\n    __typename\n    id\n    userId\n    friendId\n    circleName\n    createdAt\n    updatedAt\n    uBUserFriendsId\n  }\n}"

  public var filter: ModelSubscriptionUBFriendsMapFilterInput?

  public init(filter: ModelSubscriptionUBFriendsMapFilterInput? = nil) {
    self.filter = filter
  }

  public var variables: GraphQLMap? {
    return ["filter": filter]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateUBFriendsMap", arguments: ["filter": GraphQLVariable("filter")], type: .object(OnUpdateUbFriendsMap.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateUbFriendsMap: OnUpdateUbFriendsMap? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateUBFriendsMap": onUpdateUbFriendsMap.flatMap { $0.snapshot }])
    }

    public var onUpdateUbFriendsMap: OnUpdateUbFriendsMap? {
      get {
        return (snapshot["onUpdateUBFriendsMap"] as? Snapshot).flatMap { OnUpdateUbFriendsMap(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateUBFriendsMap")
      }
    }

    public struct OnUpdateUbFriendsMap: GraphQLSelectionSet {
      public static let possibleTypes = ["UBFriendsMap"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("friendId", type: .nonNull(.scalar(String.self))),
        GraphQLField("circleName", type: .list(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("uBUserFriendsId", type: .scalar(GraphQLID.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, friendId: String, circleName: [String?]? = nil, createdAt: String, updatedAt: String, uBUserFriendsId: GraphQLID? = nil) {
        self.init(snapshot: ["__typename": "UBFriendsMap", "id": id, "userId": userId, "friendId": friendId, "circleName": circleName, "createdAt": createdAt, "updatedAt": updatedAt, "uBUserFriendsId": uBUserFriendsId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var friendId: String {
        get {
          return snapshot["friendId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "friendId")
        }
      }

      public var circleName: [String?]? {
        get {
          return snapshot["circleName"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "circleName")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var uBUserFriendsId: GraphQLID? {
        get {
          return snapshot["uBUserFriendsId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "uBUserFriendsId")
        }
      }
    }
  }
}

public final class OnDeleteUbFriendsMapSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteUBFriendsMap($filter: ModelSubscriptionUBFriendsMapFilterInput) {\n  onDeleteUBFriendsMap(filter: $filter) {\n    __typename\n    id\n    userId\n    friendId\n    circleName\n    createdAt\n    updatedAt\n    uBUserFriendsId\n  }\n}"

  public var filter: ModelSubscriptionUBFriendsMapFilterInput?

  public init(filter: ModelSubscriptionUBFriendsMapFilterInput? = nil) {
    self.filter = filter
  }

  public var variables: GraphQLMap? {
    return ["filter": filter]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteUBFriendsMap", arguments: ["filter": GraphQLVariable("filter")], type: .object(OnDeleteUbFriendsMap.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteUbFriendsMap: OnDeleteUbFriendsMap? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteUBFriendsMap": onDeleteUbFriendsMap.flatMap { $0.snapshot }])
    }

    public var onDeleteUbFriendsMap: OnDeleteUbFriendsMap? {
      get {
        return (snapshot["onDeleteUBFriendsMap"] as? Snapshot).flatMap { OnDeleteUbFriendsMap(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteUBFriendsMap")
      }
    }

    public struct OnDeleteUbFriendsMap: GraphQLSelectionSet {
      public static let possibleTypes = ["UBFriendsMap"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("friendId", type: .nonNull(.scalar(String.self))),
        GraphQLField("circleName", type: .list(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("uBUserFriendsId", type: .scalar(GraphQLID.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, friendId: String, circleName: [String?]? = nil, createdAt: String, updatedAt: String, uBUserFriendsId: GraphQLID? = nil) {
        self.init(snapshot: ["__typename": "UBFriendsMap", "id": id, "userId": userId, "friendId": friendId, "circleName": circleName, "createdAt": createdAt, "updatedAt": updatedAt, "uBUserFriendsId": uBUserFriendsId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var friendId: String {
        get {
          return snapshot["friendId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "friendId")
        }
      }

      public var circleName: [String?]? {
        get {
          return snapshot["circleName"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "circleName")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var uBUserFriendsId: GraphQLID? {
        get {
          return snapshot["uBUserFriendsId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "uBUserFriendsId")
        }
      }
    }
  }
}