//
//  AppDelegate.swift
//  Swift-Algorithm
//
//  Created by Seven on 2018/9/29.
//  Copyright © 2018年 seven. All rights reserved.
//


import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        /// 1.数组使用
//        let use = ArrayUse()
//        use.testPrint()
        
        /// 2.模拟栈
//        let t:AnyObject = "This is String " as NSString
//        let s = Stack()
//        print(s.isEmpty)
//        s.push(object: t)
//        s.push(object: t)
//        print("stack = \(s.stack)")
//        print(s.pop()!)
//        print(s.stack)
//        let tmp = s.pop()
//        print("pop==\(tmp!)")
//        print(s.isEmpty)
        
        /// 3.字典使用
//        let d = DictionaryUse()
//        d.testDict()
//        d.uniquing()

        ///4.2Sum算法
//        let testArr = [1,2,5,7,9]
//        let target = 11
//        let sum2 = TwoSum()
//        print(sum2.twoSum1(nums: testArr, target))
//
//        print(sum2.twoSum2(nums: testArr, target))
        
        /// the sky is blue
//        let chars = "the sky is blue"
//        print(ReverseString().reverseWords(s: chars)!)
        
        
        //==============test================
        
//        TwoSumTest().test()
        // 处理字符串反转
//        ReverseStringTest().test()
        // 排序
//        PartitionList().test()
        // 检查环
//        PartitionList().test4()
        
        Path().test()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

