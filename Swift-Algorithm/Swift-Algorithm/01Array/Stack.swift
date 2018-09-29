//
//  Stack.swift
//  Swift-Algorithm
//
//  Created by Seven on 2018/9/29.
//  Copyright © 2018年 seven. All rights reserved.
//

import UIKit

class Stack: NSObject {
    var stack: [AnyObject]
    var isEmpty: Bool {return stack.isEmpty}
    var peek: AnyObject?{return stack.last}
    
    
    override init() {
        stack = [AnyObject]()
    }
    
    func push(object: AnyObject) -> Void {
        stack.append(object)
    }
    
    func pop() -> AnyObject? {
        if !isEmpty {
            return stack.removeLast()
        }else {
            return nil
        }
    }
}
