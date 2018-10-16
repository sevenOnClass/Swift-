//
//  ArrayTest.swift
//  Swift-Algorithm
//
//  Created by Seven on 2018/10/16.
//  Copyright © 2018年 seven. All rights reserved.
//

import UIKit

class ArrayTest: NSObject {
    func test() -> Void {
        var arr = [1,3,4]
        arr.sort()
        print(arr)
        arr.sort(by: >)
        print(arr)
        
    }
}
