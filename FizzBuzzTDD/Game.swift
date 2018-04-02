//
//  Game.swift
//  FizzBuzzTDD
//
//  Created by Juan Pablo Ospina Herrera on 4/2/18.
//  Copyright © 2018 Juan Pablo Ospina Herrera. All rights reserved.
//

class Game {
    
    var score: Int
    var brain: Brain
    
    init() {
        score = 0
        brain = Brain()
    }
    
    func play(move: Move) -> (right: Bool, score: Int) {
        
        let result = brain.check(number: score + 1)
        
        if result == move {
            score += 1
            return (true, score)
        }
        return (false, score)
    }
    
}
