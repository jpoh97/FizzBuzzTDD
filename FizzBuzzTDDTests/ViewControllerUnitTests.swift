//
//  ViewControllerUnitTests.swift
//  FizzBuzzTDDTests
//
//  Created by Juan Pablo Ospina Herrera on 4/2/18.
//  Copyright © 2018 Juan Pablo Ospina Herrera. All rights reserved.
//

import XCTest
@testable import FizzBuzzTDD

class ViewControllerUnitTests: XCTestCase {
    
    var viewController: ViewController!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        UIApplication.shared.keyWindow?.rootViewController = viewController
        
        let _ = viewController.view
    }
    
    override func tearDown() {
        super.tearDown()
    }
 
    func testMove1IncrementsScore() {
        viewController.play(move: .number)
        XCTAssertEqual(viewController.gameScore, 1)
    }
    
    func testMove2IncrementScore() {
        viewController.play(move: .number)
        viewController.play(move: .number)
        XCTAssertEqual(viewController.gameScore, 2)
    }
    
    func testHasAGame() {
        XCTAssertNotNil(viewController.game)
    }
    
    func testFizzIncrementScore() {
        viewController.game?.score = 2
        viewController.play(move: .fizz)
        XCTAssertEqual(viewController.gameScore, 3)
    }
    
    func testBuzzIncrementScore() {
        viewController.game?.score = 4
        viewController.play(move: .buzz)
        XCTAssertEqual(viewController.gameScore, 5)
    }
    
    func testFizzBuzzIncrementScore() {
        viewController.game?.score = 14
        viewController.play(move: .fizzBuzz)
        XCTAssertEqual(viewController.gameScore, 15)
    }
    
    func testOnWrongMoveScoreNotIncremented() {
        viewController.play(move: .fizz)
        XCTAssertEqual(viewController.gameScore, 0)
    }
}
