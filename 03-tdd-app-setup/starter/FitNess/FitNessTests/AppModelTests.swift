//
//  AppModelTests.swift
//  FitNessTests
//
//  Created by Nicholas Land on 5/15/19.
//  Copyright © 2019 Razeware. All rights reserved.
//

import FitNess
import XCTest

class AppModelTests: XCTestCase {
  
  var sut: AppModel!
  
  override func setUp() {
    super.setUp()
    sut = AppModel()
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  func testExample() {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
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
