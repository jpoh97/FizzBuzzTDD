//
//  GameTests.swift
//  FizzBuzzTDDTests
//
//  Created by Juan Pablo Ospina Herrera on 4/2/18.
//  Copyright © 2018 Juan Pablo Ospina Herrera. All rights reserved.
//

import XCTest
@testable import FizzBuzzTDD

class GameTests: XCTestCase {
    
    let game = Game()
    
    func testScoreStartsAtZero() {
        XCTAssertEqual(game.score, 0)
    }
    
    func testOnGameScoreIncremented() {
        var _ = game.play(move: .number)
        XCTAssertEqual(game.score, 1)
        _ = game.play(move: .number)
        XCTAssertEqual(game.score, 2)
        _ = game.play(move: .fizz)
        _ = game.play(move: .number)
        _ = game.play(move: .buzz)
        XCTAssertEqual(game.score, 5)
    }
    
    func testIfMoveIsRigth() {
        game.score = 1
        let _ = game.play(move: .number)
        XCTAssertEqual(game.score, 2)
    }
    
    func testIfBuzzMoveIsRight() {
        game.score = 4
        XCTAssertEqual(game.play(move: .buzz).right, true)
        game.score = 19
        XCTAssertEqual(game.play(move: .buzz).right, true)
        game.score = 18
        XCTAssertEqual(game.play(move: .buzz).right, false)
    }
    
    func testIfFizzMoveIsRight() {
        game.score = 2
        XCTAssertEqual(game.play(move: .fizz).right, true)
        game.score = 8
        XCTAssertEqual(game.play(move: .fizz).right, true)
        game.score = 10
        XCTAssertEqual(game.play(move: .fizz).right, false)
    }
    
    func testIfFizzBuzzMoveIsRight() {
        game.score = 14
        XCTAssertEqual(game.play(move: .fizzBuzz).right, true)
        game.score = 59
        XCTAssertEqual(game.play(move: .fizzBuzz).right, true)
        game.score = 10
        XCTAssertEqual(game.play(move: .fizzBuzz).right, false)
    }
    
    func testIfNumberMoveIsRight() {
        game.score = 10
        XCTAssertEqual(game.play(move: .number).right, true)
        game.score = 22
        XCTAssertEqual(game.play(move: .number).right, true)
        game.score = 23
        XCTAssertEqual(game.play(move: .number).right, false)
    }
    
    func testIfMoveWrongScoreNotIncremented() {
        game.score = 1
        let _ = game.play(move: .fizz)
        XCTAssertEqual(game.score, 1)
    }
}
