//
//  Spoon.swift
//  Hungry Developer
//
//  Created by Ilgar Ilyasov on 10/10/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class Spoon: Equatable {

    
    private var lock = NSLock()
    var spoons: [Spoon] = []
    
    func pickUp(spoon: Spoon) {
        lock.lock()
        spoons.append(spoon)
        lock.unlock()
    }
    
    func putDown(spoon: Spoon) {
        lock.lock()
        guard let index = spoons.index(of: spoon) else { return }
        spoons.remove(at: index)
        lock.unlock()
    }
    
    // MARK: - Equatable
    static func == (lhs: Spoon, rhs: Spoon) -> Bool {
        return lhs.spoons == rhs.spoons
    }
}
