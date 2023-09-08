import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        setupNavigation()
        setGradientBackground()
        setupTintColor()
        setTextFieldColors()
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func setupNavigation() {
        let loginViewController = LoginViewController()
        let navigationController = UINavigationController(rootViewController: loginViewController)
        
        // ナビゲーションコントローラをウィンドウに設定
        window?.rootViewController = navigationController
        
        // ウィンドウを表示
        window?.makeKeyAndVisible()
    }


    func setGradientBackground() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = window?.bounds ?? UIScreen.main.bounds

        if let pinkColor = UIColor(named: "pink")?.cgColor, let lightPinkColor = UIColor(named: "lightPink")?.cgColor {
            gradientLayer.colors = [pinkColor, lightPinkColor]
        } else {
            gradientLayer.colors = [UIColor.systemPink.cgColor, UIColor.white.cgColor]
        }

        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)

        window?.layer.insertSublayer(gradientLayer, at: 0)
    }

    func setupTintColor() {
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            let loginViewController = LoginViewController()
            let navigationController = UINavigationController(rootViewController: loginViewController)
            window.rootViewController = navigationController
            window.makeKeyAndVisible()
            window.tintColor = UIColor(named: "white") ?? UIColor.white
            UITextField.appearance(whenContainedInInstancesOf: [UIView.self])
                .tintColor = UIColor(named: "white") ?? UIColor.white
            UITextView.appearance(whenContainedInInstancesOf: [UIView.self])
                .tintColor = UIColor(named: "white") ?? UIColor.white
        }
    }

    func setTextFieldColors() {
        UITextField.appearance().textColor = UIColor(named: "white") ?? UIColor.white
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

