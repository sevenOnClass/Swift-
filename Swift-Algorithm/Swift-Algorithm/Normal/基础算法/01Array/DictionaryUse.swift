//
//  DictionaryUse.swift
//  Swift-Algorithm
//
//  Created by Seven on 2018/9/29.
//  Copyright © 2018年 seven. All rights reserved.
//

import UIKit

class DictionaryUse: NSObject {
    func testDict() -> Void {
        let primeNums: Set = [3,5,7,11,13]
        let oddNums: Set = [1,3,5,7,9]
        
        // 交集、并集、差集
        let primeAndOddNum = primeNums.intersection(oddNums)
        let primeOrOddNum = primeNums.union(oddNums)
        let oddNotPrimNum = oddNums.subtracting(primeNums)
        
        print("And=\(primeAndOddNum)\nOr=\(primeOrOddNum)\nSubtracting=\(oddNotPrimNum)")
        /*And=[5, 7, 3]
         Or=[13, 9, 5, 7, 3, 1, 11]
         Subtracting=[9, 1]
         */
    }
    
    func uniquing() -> Void {
        print("hello".map{($0, 1)}) // [("h", 1), ("e", 1), ("l", 1), ("l", 1), ("o", 1)]
        let dict =  Dictionary("hello".map{($0, 1)} ,uniquingKeysWith: +)
        print(dict) // ["e": 1, "o": 1, "l": 2, "h": 1]
    }
}
