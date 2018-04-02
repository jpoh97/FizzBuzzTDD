//
//  ViewControllerUITests.swift
//  FizzBuzzTDDUITests
//
//  Created by Juan Pablo Ospina Herrera on 4/2/18.
//  Copyright © 2018 Juan Pablo Ospina Herrera. All rights reserved.
//

import XCTest

class ViewControllerUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()

    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testTapNumberButtonIncrementsScore() {
        XCUIApplication().buttons["numberButton"].tap()
        XCTAssertEqual(XCUIApplication().buttons["1"].label, "1")
    }
    
    func testTapNumberButtonTwiceIncrementsTo2() {
        let numberButton = XCUIApplication().buttons["numberButton"]
        numberButton.tap()
        numberButton.tap()
        XCTAssertEqual(XCUIApplication().buttons["2"].label, "2")
    }
    
    func testTapFizzButtonIncrementsTo3() {
        let numberButton = XCUIApplication().buttons["numberButton"]
        let fizzButton = XCUIApplication().buttons["fizzButton"]
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        XCTAssertEqual(numberButton.label, "3")
    }
    
    func testTapBuzzButtonIncrementsTo5() {
        let numberButton = XCUIApplication().buttons["numberButton"]
        let fizzButton = XCUIApplication().buttons["fizzButton"]
        let buzzButton = XCUIApplication().buttons["buzzButton"]
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        buzzButton.tap()
        XCTAssertEqual(numberButton.label, "5")
    }
    
    func playTo14() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        let buzzButton = app.buttons["buzzButton"]
        
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        buzzButton.tap()
        fizzButton.tap()
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        buzzButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        numberButton.tap()
    }
    
    func testTapBuzzButtonIncrementsTo15() {
        let numberButton = XCUIApplication().buttons["numberButton"]
        let fizzBuzzButton = XCUIApplication().buttons["fizzBuzzButton"]
        playTo14()
        fizzBuzzButton.tap()
        XCTAssertEqual(numberButton.label, "15")
    }
}
