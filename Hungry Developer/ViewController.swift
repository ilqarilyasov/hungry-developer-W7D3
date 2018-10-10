//
//  ViewController.swift
//  Hungry Developer
//
//  Created by Ilgar Ilyasov on 10/10/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Arrays
    var developers = [Developer: Spoon]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createDeveloper()
    }
    
    func createDeveloper() {
        for _ in 0...5 {
            let developer = Developer()
            let spoon = Spoon()
            developers[developer] = spoon
        }
    }
    
    func runDeveloper() {
        developers.map({ $0.key })
    }
}

