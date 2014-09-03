//
//  ViewController.swift
//  BinarySearchTree
//
//  Created by Michael Tirenin on 9/3/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

import UIKit

var bst = BinarySearchTree()

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bst.addValue(24)
        bst.addValue(75)
        bst.addValue(3)
        bst.addValue(19)
        bst.addValue(51)
        bst.addValue(98)
        bst.addValue(32)
        bst.addValue(8)
        bst.addValue(50)

        var searchNode = bst.findNodeForValue(50)
        println(searchNode!.value)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

