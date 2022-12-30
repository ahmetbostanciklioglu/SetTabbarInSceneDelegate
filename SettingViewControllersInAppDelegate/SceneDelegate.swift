//
//  SceneDelegate.swift
//  SettingViewControllersInAppDelegate
//
//  Created by Ahmet Bostancıklıoğlu on 30.12.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    //MARK: Set Tabbar and view controllers
    let tabBar                = UITabBarController()
    let firstViewController   = UIViewController()
    let secondViewController  = UIViewController()
    let thirdViewController   = UIViewController()
    
    func addingViewControllerToTabBarController() {
        //MARK: Adding ViewControllers to navigation controllers,
        let firstNavigationController = UINavigationController(rootViewController: firstViewController)
        let secondNavigationController = UINavigationController(rootViewController: secondViewController)
        let thirdNavigationController = UINavigationController(rootViewController: thirdViewController)
        
        //MARK: set view controllers to tabbar according to the order
        tabBar.setViewControllers([firstNavigationController, secondNavigationController, thirdNavigationController], animated: true)
    }
    
    //MARK: Scene delegate function.
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        //MARK: Programmatically adding tabbar to the SceneDelegate
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = tabBar
        window?.backgroundColor = .systemBackground
        window?.makeKeyAndVisible()
        
        //MARK: Set titles to related controllers
        firstViewController.title = "firstController"
        secondViewController.title = "secondController"
        thirdViewController.title = "thirdController"
        
        //MARK: UITabbar appearances in selected and unselected conditions
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.label], for: UIControl.State.selected)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.systemGray], for: UIControl.State.normal)
        
        //MARK: call function
        addingViewControllerToTabBarController()
    }
    
    
    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }
    
    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }
    
    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }
    
    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }
    
    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }
    
    
}

