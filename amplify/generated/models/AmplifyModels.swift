// swiftlint:disable all
import Amplify
import Foundation

// Contains the set of classes that conforms to the `Model` protocol. 

final public class AmplifyModels: AmplifyModelRegistration {
  public let version: String = "383ba15f25ef174748ba940919fa4bbe"
  
  public func registerModels(registry: ModelRegistry.Type) {
    ModelRegistry.register(modelType: UBEvent.self)
    ModelRegistry.register(modelType: UBUser.self)
    ModelRegistry.register(modelType: UBFriendsMap.self)
  }
}