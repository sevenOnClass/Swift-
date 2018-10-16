//
//  StackI.swift
//  Swift-Algorithm
//
//  Created by Seven on 2018/10/16.
//  Copyright © 2018年 seven. All rights reserved.
//

import UIKit

protocol StackX {
    associatedtype Element
    
    var isEmpty: Bool {get}
    var size: Int {get}
    var peek: Element? {get}
    
    mutating func push (_ newElement: Element)
    mutating func pop() -> Element?
    
}

struct IntegerStack: StackX {
    
    typealias Element = Int
    
    var isEmpty: Bool { return stack.isEmpty }
    var size: Int {return stack.count}
    var peek: Element? {return stack.last}
    
    private var stack = [Element]()
    
    mutating func push(_ newElement: Element) {
        stack.append(newElement)
    }
    
    mutating func pop() -> Element? {
        return stack.popLast()
    }
    
}

class StackI: NSObject {
    
}
