//
//  AppDelegate.swift
//  Dropbox
//
//  Created by Christopher Ryan on 9/23/16.
//  Copyright © 2016 Christopher Ryan. All rights reserved.
//

import UIKit

extension UIViewController {
    @IBAction func onBackButtonPressHACK(_ sender: AnyObject) {
        
        _ = navigationController?.popToRootViewController(animated: true)
        //self.presentingViewController?.dismiss(animated: true)
        // navigationController!.popViewController(animated: true)
        
    }
    
    @IBAction func logoutHACK(_ sender: AnyObject) {
        
        let tom = tabBarController?.presentingViewController
        
        tom?.dismiss(animated: true)
       _ = (tom as? UINavigationController)?.popToRootViewController(animated: true)
        
    }
    
    
    @IBAction func createHACK(_ sender: AnyObject) {
        presentSimpleActionSheet(message: "Before you can complete your registration, you must accept the Dropbox Terms of Service",
                                 buttons: ["I Agree": { action in self.performSegue(withIdentifier: "IAgree", sender: sender)},
                                           "View Terms": { action in self.performSegue(withIdentifier: "ViewTerms", sender: sender)}])
    }
    

    func presentSimpleActionSheet(message: String? = nil, buttons: [String: ((UIAlertAction) -> Void)?]) {
        let alertController = UIAlertController(title: nil, message: message, preferredStyle: .actionSheet)
        
        for (title, action) in buttons {
            let alertAction = UIAlertAction(title: title, style: .default, handler: action)
            // add the logout action to the alert controller
            alertController.addAction(alertAction)
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            // Cancel mother fucker!
        }
        
        // add the cancel action to the alert controller
        alertController.addAction(cancelAction)
        
        present(alertController, animated: true) {
            // optional code for what happens after the alert controller has finished presenting
        }
    }

}


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
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

