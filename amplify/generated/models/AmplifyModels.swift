// swiftlint:disable all
import Amplify
import Foundation

// Contains the set of classes that conforms to the `Model` protocol. 

final public class AmplifyModels: AmplifyModelRegistration {
  public let version: String = "a4d62e7f9ae73db3f1887d92ccf887f1"
  
  public func registerModels(registry: ModelRegistry.Type) {
    ModelRegistry.register(modelType: UBEvent.self)
    ModelRegistry.register(modelType: UBUser.self)
    ModelRegistry.register(modelType: UBFriends.self)
  }
}