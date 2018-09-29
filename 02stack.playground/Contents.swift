//: Playground - noun: a place where people can play

import UIKit

class Stack {
    var stack: [AnyObject]
    var isEmpty: Bool {return stack.isEmpty}
    var peek: AnyObject? {return stack.last}
    
    
    init() {
        stack = [AnyObject]()
    }
    
    func push(object:AnyObject) -> Void {
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

var s = Stack()
print(s.isEmpty)
let t: AnyObject = "This is a bridged string." as NSString
s.push(object: t)
s.push(object: t)
s.push(object: t)
s.pop()
s.pop()
s.pop()
print(s.isEmpty)
