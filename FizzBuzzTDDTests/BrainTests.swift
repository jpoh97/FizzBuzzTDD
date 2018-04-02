//
//  BrainTests.swift
//  FizzBuzzTDDTests
//
//  Created by Juan Pablo Ospina Herrera on 4/2/18.
//  Copyright © 2018 Juan Pablo Ospina Herrera. All rights reserved.
//

import XCTest
@testable import FizzBuzzTDD

class BrainTests: XCTestCase {
    
    let brain = Brain()    
    
    func testIsDivisibleByThree() {
        XCTAssertEqual(brain.isDivisibleByThree(number: 3), true)
        XCTAssertEqual(brain.isDivisibleByThree(number: 6), true)
        XCTAssertEqual(brain.isDivisibleByThree(number: 4), false)
        XCTAssertEqual(brain.isDivisibleByThree(number: 1), false)
    }
    
    func testIsDivisibleByFive() {
        XCTAssertEqual(brain.isDivisibleByFive(number: 5), true)
        XCTAssertEqual(brain.isDivisibleByFive(number: 10), true)
        XCTAssertEqual(brain.isDivisibleByFive(number: 1), false)
        XCTAssertEqual(brain.isDivisibleByFive(number: 7), false)
    }
    
    func testIsDivisibleByFifteen() {
        XCTAssertEqual(brain.isDivisibleByFifteen(number: 15), true)
        XCTAssertEqual(brain.isDivisibleByFifteen(number: 45), true)
        XCTAssertEqual(brain.isDivisibleByFifteen(number: 1), false)
        XCTAssertEqual(brain.isDivisibleByFifteen(number: 25), false)
    }
    
    func testSayFizz() {
        XCTAssertEqual(brain.check(number: 3), Move.fizz)
        XCTAssertEqual(brain.check(number: 3), Move.fizz)
        XCTAssertEqual(brain.check(number: 6), Move.fizz)
        XCTAssertEqual(brain.check(number: 9), Move.fizz)
        XCTAssertTrue(brain.check(number: 1) != Move.fizz)
        XCTAssertTrue(brain.check(number: 7) != Move.fizz)
        XCTAssertTrue(brain.check(number: 10) != Move.fizz)
    }
    
    func testSayBuzz() {
        XCTAssertEqual(brain.check(number: 5), Move.buzz)
        XCTAssertEqual(brain.check(number: 10), Move.buzz)
        XCTAssertEqual(brain.check(number: 20), Move.buzz)
        XCTAssertTrue(brain.check(number: 1) != Move.buzz)
        XCTAssertTrue(brain.check(number: 7) != Move.buzz)
        XCTAssertTrue(brain.check(number: 21) != Move.buzz)
    }
    
    func testSayFizzBuzz() {
        XCTAssertEqual(brain.check(number: 15), Move.fizzBuzz)
        XCTAssertEqual(brain.check(number: 30), Move.fizzBuzz)
        XCTAssertEqual(brain.check(number: 60), Move.fizzBuzz)
        XCTAssertTrue(brain.check(number: 1) != Move.fizzBuzz)
        XCTAssertTrue(brain.check(number: 7) != Move.fizzBuzz)
        XCTAssertTrue(brain.check(number: 25) != Move.fizzBuzz)
    }
    
    func testSayNumber() {
        XCTAssertEqual(brain.check(number: 1), Move.number)
        XCTAssertEqual(brain.check(number: 4), Move.number)
        XCTAssertEqual(brain.check(number: 7), Move.number)
        XCTAssertTrue(brain.check(number: 9) != Move.number)
        XCTAssertTrue(brain.check(number: 10) != Move.number)
        XCTAssertTrue(brain.check(number: 15) != Move.number)
    }
}
