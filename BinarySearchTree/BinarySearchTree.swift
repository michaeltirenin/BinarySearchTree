//
//  BinarySearchTree.swift
//  BinarySearchTree
//
//  Created by Michael Tirenin on 9/3/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//
// BST - left values are < node, right values are > node

import Foundation

class BinarySearchTree {
    
    var root : Node?
    
    init() {
        
    }
    
    func addValue(value : Int) {
        
        var newNode = Node(value: value)
        
        if root == nil {
            self.root = newNode
        } else {
            self.root!.addNode(newNode)
        }
    }
    
    func findNodeForValue(value : Int) -> Node? {
        
        var foundNode = self.findValue(value, forNode : self.root!)
        return foundNode
    }
   
    func findValue(value : Int, forNode node : Node?) -> Node? {
        
        if node != nil {
            if value == node!.value {
                return node // found our value!
            } else {
                if value < node!.value { // more recursion
                    return self.findValue(value, forNode: node!.leftNode!)
                } else if value > node!.value {
                    return self.findValue(value, forNode: node!.rightNode!)
                }
            }
        } else {
            println("Nope. No node with that value.")
        }
        return nil
    }
}

class Node {
    
    var value : Int
    var leftNode : Node?
    var rightNode : Node?
    
    init(value : Int) {
        self.value = value
    }
    
    func addNode(newNode : Node) {
        
        // if value is <, go left
        if newNode.value < self.value {
            
            // case: node has no value AND no left child
            if leftNode == nil {
                self.leftNode = newNode
            } else {
                self.leftNode?.addNode(newNode) // recursion
            }
           
        // if value is >, go right
        } else if newNode.value > self.value {
         
            // case: node has not value AND no right child
            if rightNode == nil {
                self.rightNode = newNode
            } else {
                self.rightNode?.addNode(newNode) // recursion
            }
        }
    }
    
}