//
//  Developer.swift
//  Hungry Developer
//
//  Created by Ilgar Ilyasov on 10/10/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class Developer {
    
    var index: Int
    var leftSpoon: Spoon
    var rightSpoon: Spoon
    
    init(index: Int, leftSpoon: Spoon, rightSpoon: Spoon) {
        self.index = index
        self.leftSpoon = leftSpoon
        self.rightSpoon = rightSpoon
    }
    
    func think() {
        leftSpoon.pickUp()
        rightSpoon.pickUp()
    }
    
    func eat() {
        let eatTime = arc4random_uniform(UInt32(1e3))
        print("Developer\(index) eating for \(Double(eatTime)/1e3)")
        usleep(eatTime)
        leftSpoon.putDown()
        
        usleep(eatTime)
        rightSpoon.putDown()
        print("Developer\(index) finished eating")
    }
    
    func run() {
        think()
        eat()
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
