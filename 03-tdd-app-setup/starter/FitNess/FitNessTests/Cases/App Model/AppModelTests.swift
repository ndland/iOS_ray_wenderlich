//
//  AppModelTests.swift
//  FitNessTests
//
//  Created by Nicholas Land on 5/15/19.
//  Copyright © 2019 Razeware. All rights reserved.
//

import XCTest
@testable import FitNess

class AppModelTests: XCTestCase {
  
  var sut: AppModel!
  
  override func setUp() {
    super.setUp()
    sut = AppModel()
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDown() {
    sut = nil
    super.tearDown()
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  func testAppModel_whenInitialized_isInNotStartedState() {
    let initialState = sut.appState
    XCTAssertEqual(initialState, AppState.notStarted)
  }
  
  func testAppModel_whenStarted_isInProgressState() {
    // 2 when started
    sut.start()
    
    // 3 then it is inProgress
    let observedState = sut.appState
    XCTAssertEqual(observedState, AppState.inProgress)
  }
}
