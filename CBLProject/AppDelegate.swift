//
//  AppDelegate.swift
//  CBLProject
//
//  Created by Zev on 19/06/2016.
//  Copyright © 2016 Zev23.com. All rights reserved.
//

import UIKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        print("Application started\n\n")
        let cblManager = CBLManager.sharedInstance()
        let cblDatabase = try? cblManager.databaseNamed("cbl")
        let data = ["name":"CBLTEST", "title":"Demo"]
        let cblDoc = cblDatabase?.createDocument()
        let cblDocID = cblDoc?.documentID
        let cblDocRev = try? cblDoc?.putProperties(data)
        
        print("Document created ID=\(cblDocID) REV=\(cblDocRev)")
        
        let queryResult = cblDatabase?.document(withID: cblDocID!)
        let result = queryResult?.properties
        
        print("The query result is:")
        for (key, value) in result! {
            print("\(key):\(value)")
        }
        print("Application completed")
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
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

