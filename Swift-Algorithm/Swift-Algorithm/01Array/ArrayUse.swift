//
//  ArrayUse.swift
//  Swift-Algorithm
//
//  Created by Seven on 2018/9/29.
//  Copyright © 2018年 seven. All rights reserved.
//

import UIKit

class ArrayUse: NSObject {
    let nums = [1,2,3]
    let num2 = [Int](repeating: 0, count: 5)
    
    func testPrint() -> Void {
        var num3 = [3,4,5]
        num3.append(8)
        print(num3)
        num3.sort()
        print(num3)
        num3.sort(by: >)
        print(num3)
        let anotherNums = Array(num3[0..<num3.count-1])
        print(anotherNums)
    }
    

}
