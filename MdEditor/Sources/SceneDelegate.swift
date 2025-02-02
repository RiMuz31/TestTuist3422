//
//  SceneDelegate.swift
//  MdEditor
//
//  Created by Rinat Khaeritdinov on 07.07.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
	var window: UIWindow?
	func scene(
		_ scene: UIScene,
		willConnectTo session: UISceneSession,
		options connectionOptions: UIScene.ConnectionOptions
	) {
		guard let scene = (scene as? UIWindowScene) else { return }
		window = UIWindow(windowScene: scene)
		
		let viewController = ViewController()
		window?.rootViewController = viewController
		window?.makeKeyAndVisible()
	}
}
