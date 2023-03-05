//
//  SceneDelegate.swift
//  Settings
//
//  Created by Aisaule Sibatova on 04.03.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        self.window = UIWindow(windowScene: windowScene)
//        let initialViewController = ViewController()
        let navigationController = UINavigationController(rootViewController: SettingsViewController())
        self.window?.rootViewController = navigationController
        self.window?.makeKeyAndVisible()
    }

}
