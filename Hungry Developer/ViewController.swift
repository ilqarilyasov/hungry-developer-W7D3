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
    var spoons = [Spoon]()
    var developers = [Developer(index: 0, leftSpoon: spoons[0], rightSpoon: spoons[1]),
                      Developer(index: 1, leftSpoon: spoons[1], rightSpoon: spoons[2]),
                      Developer(index: 2, leftSpoon: spoons[2], rightSpoon: spoons[3]),
                      Developer(index: 3, leftSpoon: spoons[3], rightSpoon: spoons[4]),
                      Developer(index: 4, leftSpoon: spoons[4], rightSpoon: spoons[0])]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        create()
        
        for dev in developers {
            DispatchQueue.global().async {
                dev.run()
            }
        }
        dispatchMain()
    }
    
    func create() {
        for i in 1...5 {
            let spoon = Spoon(index: i)
            spoons.append(spoon)
        }
    }

}

