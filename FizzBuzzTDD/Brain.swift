//
//  Brain.swift
//  FizzBuzzTDD
//
//  Created by Juan Pablo Ospina Herrera on 4/2/18.
//  Copyright © 2018 Juan Pablo Ospina Herrera. All rights reserved.
//

class Brain {
    
    func check(number: Int) -> Move {
        switch true {
        case isDivisibleByFifteen(number: number):
             return .fizzBuzz
        case isDivisibleByThree(number: number):
            return .fizz
        case isDivisibleByFive(number: number):
            return .buzz
        default:
            return .number
        }
    }
    
    func isDivisible(number: Int, divider: Int) -> Bool {
        if number % divider == 0 {
            return true
        }
        return false
    }
    
    func isDivisibleByThree(number: Int) -> Bool {
        return isDivisible(number: number, divider: 3)
    }
    
    func isDivisibleByFive(number: Int) -> Bool {
        return isDivisible(number: number, divider: 5)
    }
    
    func isDivisibleByFifteen(number: Int) -> Bool {
        return isDivisible(number: number, divider: 15)
    }
}
