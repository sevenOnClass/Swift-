//
//  PartitionList.swift
//  Swift-Algorithm
//
//  Created by Seven on 2018/10/16.
//  Copyright © 2018年 seven. All rights reserved.
//

import UIKit

class PartitionList: NSObject {
    
    //MARK: - 测试方法
    func test() -> Void {
        var list = List()
        list.appendToTail(val: 1)
        list.appendToTail(val: 5)
        
        
        list.appendToTail(val: 3)
        list.appendToTail(val: 2)
        list.appendToTail(val: 4)
        list.appendToTail(val: 2)
        
        print(list)
        
        let num = 3;
        print(partitionList(list.head, num))
        
    }

    //MARK: - 循环链表
    func test2() -> Void {
        var list = List()
        list.appendToTail(val: 1)
        list.appendToTail(val: 5)
        
        let tempNode = ListNode(9)
        list.appendToTail(tempNode)
        list.appendToTail(val: 3)
        list.appendToTail(val: 2)
        list.appendToTail(val: 4)
        list.appendToTail(tempNode)
        
        print(list)
        
        print(hasCycle(list.head))
    }
    
    //MARK: - 删除倒数第n个
    func test3() -> Void {
        var list = List()
        list.appendToTail(val: 1)
        list.appendToTail(val: 2)
        list.appendToTail(val: 3)
//        list.appendToTail(val: 4)
//        list.appendToTail(val: 5)
        print(list)
        
        removeNthFromEnd(list.head, 2);
        print(list)
        
    }
    
    //MARK: - 链表逆置
    func test4() -> Void {
        var list = List()
        list.appendToTail(val: 1)
        list.appendToTail(val: 2)
        list.appendToTail(val: 3)
        print(list)
        
        
        print(reverseList(list.head))
    }
    
    //MARK: - 自定义
    
    func partitionList(_ head: ListNode?, _ target: Int) -> ListNode? {
        
        let dummyPre = ListNode(0), dummyPost = ListNode(0)
        var preNode = dummyPre, postNode = dummyPost
        
        var node = head
        while node != nil {
            if node!.val < target {
                preNode.next = node
                preNode = node!
            }else {
                postNode.next = node;
                postNode = node!
            }
            node = node!.next
        }
        
        postNode.next = nil
        preNode.next = dummyPost.next
        
        return dummyPre.next
        
    }
    
    func hasCycle(_ head: ListNode?) -> Bool {
        var slow = head, fast = head
        
        while fast != nil && fast!.next != nil {
            slow = slow!.next!
            fast = fast!.next!.next!
            if slow === fast {
                return true
            }
        }
        
        return false
    }
    
    func removeNthFromEnd(_ head: ListNode?,_ n: Int) -> ListNode? {
        
        guard let head = head else {
            return nil
        }
        
        let dummy = ListNode(0)
        dummy.next = head
        
        
        var slow: ListNode? = dummy
        var fast: ListNode? = dummy
        
        for _ in 0 ..< n {
            if (fast == nil) {
                break
            }
            fast = fast!.next
        }
        
        while fast != nil && fast!.next != nil {
            slow = slow!.next
            fast = fast!.next
        }
        
        slow!.next = slow!.next!.next
        
        return dummy.next
        
    }
    
    func reverseList(_ head: ListNode?) -> ListNode? {
        guard let head = head else {
            return nil
        }
        
        let list = List()
        var preNode = head
        
        
        while preNode != nil {
            
            let tempNode = preNode.next
            if list.head == nil {
                
                list.tail = preNode
                list.head = preNode
                preNode.next = nil
                
            }else {
                preNode.next = list.head
                list.head = preNode
                
            }
            
            if tempNode != nil {
                preNode = tempNode!
            }else {
                break
            }
            
        }
        
        return list.head
    }
    
    
    
    
}
