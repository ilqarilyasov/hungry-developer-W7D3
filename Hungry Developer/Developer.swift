//
//  Developer.swift
//  Hungry Developer
//
//  Created by Ilgar Ilyasov on 10/10/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class Developer: Hashable & Equatable {
    
    var name: String = ""
    
    var leftSpoon = Spoon()
    var rightSpoon = Spoon()
    
    func think(developer: Developer, leftSpoon: Spoon, rightSpoon: Spoon) {
        developer.leftSpoon.pickUp(spoon: leftSpoon)
        developer.rightSpoon.pickUp(spoon: rightSpoon)
    }
    
    func eat(developer: Developer, leftSpoon: Spoon, rightSpoon: Spoon) {
        usleep(100)
        developer.leftSpoon.putDown(spoon: leftSpoon)
        developer.rightSpoon.putDown(spoon: rightSpoon)
    }
    
    func run(developer: Developer, leftSpoon: Spoon, rightSpoon: Spoon) {
        think(developer: developer, leftSpoon: leftSpoon, rightSpoon: rightSpoon)
        eat(developer: developer, leftSpoon: leftSpoon, rightSpoon: rightSpoon)
    }
    
    // MARK: - Equatable
    static func == (lhs: Developer, rhs: Developer) -> Bool {
        return lhs.leftSpoon == rhs.leftSpoon &&
            lhs.rightSpoon == rhs.rightSpoon
    }
    
    // MARK: - Hashable
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
}

// INSTRUCTION:

// Developer.run() should call think() then eat() over and over again forever
// think() should pick up both spoons before returning
// eat() should pause for a random amount of time before putting both spoons down
// Hint: use usleep() to pause for a given number of microseconds

// Create 5 spoons & 5 developers giving each developer a left and right spoon
// Developers will of course share spoons
// Ever developer's right spoon is the next developer's left spoon
// Call run() on each developer in a different queue/thread
// You can do this with following code assuming you put your developers in an array

//DispatchQueue.concurrentPerform(iterations: 5) {
//    developers[$0].run()
//}

// think until left spoon is available. When it is, pick it up
// think until right spoon is available. When it is, pick it up
// when both spoons are held, eat for a fixed amount of time
// then put the right spoon down
// then put the left spoon down
// repeat from the beginning
