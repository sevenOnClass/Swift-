//
//  Path.swift
//  Swift-Algorithm
//
//  Created by Seven on 2018/10/16.
//  Copyright © 2018年 seven. All rights reserved.
//

import UIKit

class Path: NSObject {
    
    func test() -> Void {
        let path = "/home/./A/B/c/.."
        print("path=\(path)")
        print(simplifyPath(path: path))
    }
    
    func simplifyPath(path: String) -> String {
        var pathStack = [String]()
        
        var paths = path.components(separatedBy: "/")
        
        for path in paths {
            guard path != "." else{
                continue
            }
            
            
            if path == ".." {
                if pathStack.count > 0 {
                    pathStack.removeLast()
                }
            } else if path != "" {
                pathStack.append(path)
            }
            
        }
        
        let res = pathStack.reduce("") {total, dir in
            
            "\(total)/\(dir)"
            
        }
        
        return res.isEmpty ? "/":res
    }

}
