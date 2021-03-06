//
//  ExternalModuleTypesStubbableTests.swift
//  MockingbirdTests
//
//  Created by Andrew Chang on 9/15/19.
//

import Foundation
import Mockingbird
import MockingbirdModuleTestsHost
@testable import MockingbirdTestsHost

// MARK: - Stubbable declarations

private protocol StubbableLocalPublicExternalProtocol {
  func getVariable() -> Mockable<VariableDeclaration, () -> Bool, Bool>
  func method() -> Mockable<MethodDeclaration, () -> Void, Void>
}
extension LocalPublicExternalProtocolMock: StubbableLocalPublicExternalProtocol {}

private protocol StubbableSubclassingExternalClassWithInheritedIntializer {
  func getInternalVariable() -> Mockable<VariableDeclaration, () -> Bool, Bool>
  func internalMethod() -> Mockable<MethodDeclaration, () -> Void, Void>
  func getOpenVariable() -> Mockingbird.Mockable<Mockingbird.VariableDeclaration, () -> Bool, Bool>
  func openMethod() -> Mockingbird.Mockable<Mockingbird.MethodDeclaration, () -> Void, Void>
}
extension SubclassingExternalClassWithInheritedIntializerMock: StubbableSubclassingExternalClassWithInheritedIntializer {}
extension SubclassingExternalSubclassWithInheritedInitializerMock: StubbableSubclassingExternalClassWithInheritedIntializer {}
extension SubclassingExternalClassWithDesignatedIntializerMock: StubbableSubclassingExternalClassWithInheritedIntializer {}
extension SubclassingExternalSubclassWithDesignatedInitializerMock: StubbableSubclassingExternalClassWithInheritedIntializer {}
