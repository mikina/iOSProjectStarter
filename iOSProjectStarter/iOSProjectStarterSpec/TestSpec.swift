//
//  TestSpec.swift
//  iOSProjectStarter
//
//  Created by Mike Mikina on 10/24/16.
//  Copyright © 2016 SwiftCookies.com. All rights reserved.
//

import Foundation
import Quick
import Nimble

class TestSpec: QuickSpec {
  override func spec() {
    describe("sample test") {
      context("first") {
        it("should pass") {
          expect(1).to(equal(1))
        }
      }
    }
  }
}
