//
//  TwoSum.swift
//  Swift-Algorithm
//
//  Created by Seven on 2018/9/29.
//  Copyright © 2018年 seven. All rights reserved.
//

import UIKit

class TwoSum: NSObject {
    func twoSum1(nums: [Int], _ target: Int) -> Bool {
        var set = Set<Int>()
        
        for num in nums {
            if set.contains(target - num) {
                return true;
            }
            
            set.insert(num)
        }
        
        return false;
    }
    
    func twoSum2(nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        
        for (i,num) in nums.enumerated() {
            if let lastIndex = dict[target-num] {
                return [lastIndex, i]
            } else {
                dict[num] = i
            }
            
        }
        
        fatalError("No valid output!")
    }
    
    

}
