//
//  ViewController.swift
//  Deadlock
//
//  Created by Krishna on 20/09/19.
//  Copyright © 2019 Krishna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        deadlock()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //This create dead lock
    //Here queue is serial so the inner block will wait for the outer block to
    // finish. On the other hand, the outer block can not finifsh as the inner block is holding the control of the current thread (as it is Sync). It will create a dead lock.
    func deadlock(){
        print("Create Deadlock")
        DispatchQueue.main.async {
            DispatchQueue.main.sync {
                print("Sanjukta")
            }
        }
    }
}

