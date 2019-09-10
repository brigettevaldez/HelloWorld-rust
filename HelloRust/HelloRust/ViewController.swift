//
//  ViewController.swift
//  HelloRust
//
//  Created by Brigette Valdez on 9/10/19.
//  Copyright © 2019 Brigette Valdez. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let result = rust_hello("world")
        let swift_result = String(cString: result!)
        rust_hello_free(UnsafeMutablePointer(mutating: result))
        print(swift_result)
    }
}
