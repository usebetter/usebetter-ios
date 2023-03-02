// swiftlint:disable all
import Amplify
import Foundation

// Contains the set of classes that conforms to the `Model` protocol. 

final public class AmplifyModels: AmplifyModelRegistration {
  public let version: String = "9af1082e7e75fb6f0f2784dc37c65124"
  
  public func registerModels(registry: ModelRegistry.Type) {
    ModelRegistry.register(modelType: UBEvent.self)
    ModelRegistry.register(modelType: UBUser.self)
    ModelRegistry.register(modelType: UBFriends.self)
  }
}