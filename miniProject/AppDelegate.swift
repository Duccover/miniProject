//
//  AppDelegate.swift
//  miniProject
//
//  Created by Duc on 6/5/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
var isLaunchingApp = true
    var window: UIWindow?

    func switchRootViewController(vc: UIViewController) {
        isLaunchingApp = false
        DispatchQueue.main.async {
            self.window?.rootViewController = vc
        }
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
      
//        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
//        let loginVC = storyboard.instantiateViewController(withIdentifier: "login") as! Login
//        switchRootViewController(vc: UINavigationController(rootViewController: loginVC))
//        let navi = UINavigationController(rootViewController: loginVC)
//
//        self.window?.rootViewController = navi
//        self.window?.makeKeyAndVisible()

        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
   
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        
    }
 


}
