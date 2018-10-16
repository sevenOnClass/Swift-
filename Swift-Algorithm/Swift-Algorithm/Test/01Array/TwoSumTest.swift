//
//  TwoSum.swift
//  Swift-Algorithm
//
//  Created by Seven on 2018/10/16.
//  Copyright © 2018年 seven. All rights reserved.
//

import UIKit

class TwoSumTest: NSObject {
    func test() -> Void {
        let arr = [1,2,7,9]
        let target = 12
        
        print(contansNum(arr, target))
        print(twoSum(arr, target))
    }
    
    func contansNum(_ nums: [Int], _ target: Int) -> Bool {
        var set = Set<Int>()
        
        for num in nums {
            if (set.contains(target-num)) {
                return true
            }else {
                set.insert(num)
            }
        }
        
        return false
        
//        fatalError("No Correct Result")
    }
    
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = Dictionary<Int, Int>()
        
        for (i,num) in nums.enumerated() {
            if let index = dict[target - num] {
                return [index, i]
            }else {
                dict[num] = i
            }
        }
        
        fatalError("No valid output")
    }
}
