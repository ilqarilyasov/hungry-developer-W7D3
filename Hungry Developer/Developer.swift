//
//  Developer.swift
//  Hungry Developer
//
//  Created by Ilgar Ilyasov on 10/10/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class Developer: Equatable {
    
    var developers: [Developer] = []
    let leftSpoon = Spoon()
    let rightSpoon = Spoon()
    
    func think() {
        // think() should pick up both spoons before returning
    }
    
    func eat() {
        // eat() should pause for a random amount of time before putting both spoons down
        // Hint: use usleep() to pause for a given number of microseconds
    }
    
    func run() {
        // Developer.run() should call think() then eat() over and over again forever
    }
    
    // MARK: - Equatable
    static func == (lhs: Developer, rhs: Developer) -> Bool {
        return lhs.leftSpoon == rhs.leftSpoon &&
            lhs.rightSpoon == rhs.rightSpoon
    }
}

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
