//
//  StackTest.swift
//  Swift-Algorithm
//
//  Created by Seven on 2018/10/16.
//  Copyright © 2018年 seven. All rights reserved.
//

import UIKit

class StackTest: NSObject {
    
    var stack: [AnyObject]
    var isEmpty: Bool { return stack.isEmpty }
    var peek: AnyObject? {return stack.last }
    
    override init() {
        stack = [AnyObject]()
    }
    
    func push(obj: AnyObject) -> Void {
        stack.append(obj)
    }
    
    func pop() -> AnyObject? {
        if isEmpty {
            return nil
        }else {
            return stack.removeLast()
        }
    }

}
