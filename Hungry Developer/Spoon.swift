//
//  Spoon.swift
//  Hungry Developer
//
//  Created by Ilgar Ilyasov on 10/10/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class Spoon: Equatable {
    
    var subSpoons: [Spoon] = []
    private var lock = NSLock()
    
    func pickUp(spoon: Spoon) {
        lock.lock()
        subSpoons.append(spoon) // Writing
        lock.unlock()
    }
    
    func putDown(spoon: Spoon) {
        lock.lock()
        guard let index = subSpoons.index(of: spoon) else { return } // Reading
        subSpoons.remove(at: index) // Writing
        lock.unlock()
    }
    
    // MARK: - Equatable
    static func == (lhs: Spoon, rhs: Spoon) -> Bool {
        return lhs.subSpoons == rhs.subSpoons
    }
}
