//
//  StepCountControllerTests.swift
//  FitNessTests
//
//  Created by Nicholas Land on 10/1/19.
//  Copyright © 2019 Razeware. All rights reserved.
//

import XCTest
@testable import FitNess

class StepCountControllerTests: XCTestCase {
  
  var sut: StepCountController!
  
  override func setUp() {
    super.setUp()
    sut = StepCountController()
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDown() {
    sut = nil
    super.tearDown()
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  // MARK: - Initial State
  
  func testController_whenTapped_appIsInProgress() {
    // when
    when_StartStopPauseCalled()
    
    // then
    let state = AppModel.instance.appState
    XCTAssertEqual(state, AppState.inProgress)
  }
  
  // MARK: - In Progress
  
  func testController_whenStartTapped_buttonLabelIsPaused() {
    // when
    when_StartStopPauseCalled()
    // then
    let text = sut.startButton.title(for: .normal)
    XCTAssertEqual(text, AppState.inProgress.nextStateButtonLabel)
  }
  
  private func when_StartStopPauseCalled() {
    sut.startStopPause(nil)
  }
}
