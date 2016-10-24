//
//  main.swift
//  iOSProjectStarter
//
//  Created by Mike Mikina on 10/24/16.
//  Copyright © 2016 SwiftCookies.com. All rights reserved.
//

import UIKit

func isRunningTests() -> Bool {
  let environment = ProcessInfo.processInfo.environment
  if environment["XCTestConfigurationFilePath"] != nil {
    return true
  }
  return false
}

class SpecAppDelegate: UIResponder, UIApplicationDelegate {

}

if isRunningTests() {
  UIApplicationMain(
    CommandLine.argc,
    UnsafeMutableRawPointer(CommandLine.unsafeArgv)
      .bindMemory(
        to: UnsafeMutablePointer<Int8>.self,
        capacity: Int(CommandLine.argc)),
    nil,
    NSStringFromClass(SpecAppDelegate.self)
  )
} else {
  UIApplicationMain(
    CommandLine.argc,
    UnsafeMutableRawPointer(CommandLine.unsafeArgv)
      .bindMemory(
        to: UnsafeMutablePointer<Int8>.self,
        capacity: Int(CommandLine.argc)),
    nil,
    NSStringFromClass(AppDelegate.self)
  )
}
