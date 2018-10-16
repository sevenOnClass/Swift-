//
//  List.swift
//  Swift-Algorithm
//
//  Created by Seven on 2018/10/16.
//  Copyright © 2018年 seven. All rights reserved.
//

import UIKit

class ListNode: NSObject {
    var val: Int
    var next: ListNode?
    
    init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
    override var description: String {
        var pre = self.next, des = ""
        
        des.append(String(self.val))
        
        while pre != nil {
            des.append("->"+String(pre!.val))
            pre = pre!.next
        }
        
        return des
    }
}

class List: NSObject {
    
    var head: ListNode?
    var tail: ListNode?
    
    func appendToTail(val: Int) -> Void {
        if tail == nil {
            tail = ListNode(val)
            head = tail
        }else {
            tail!.next = ListNode(val)
            tail = tail!.next
        }
    }
    
    func appendToTail(_ node: ListNode?) -> Void {
        guard let node = node else {
             print("空")
            return
        }
        if tail != nil {
            tail!.next = node
            tail = node
        }else {
            tail = node
            head = tail
        }
    }
    
    func appendToHead(val: Int) -> Void {
        if head == nil {
            head = ListNode(val)
            tail = head
        }else {
            let temp = ListNode(val)
            temp.next = head
            head = temp
        }
    }
    
    override var description: String {
        var pre = head?.next, des = ""
        if head != nil {
            des.append(String(head!.val))
        }else {
            return "The list is empty"
        }
        var  i = 0
        while pre != nil && i<10{
            des.append("->"+String(pre!.val))
            pre = pre?.next
            i += 1
        }
        
        return des
    }
    
    

}


