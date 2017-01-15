
import UIKit
import Material

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  
  func applicationDidFinishLaunching(_ application: UIApplication) {
    let appToolbarController = AppToolbarController(rootViewController: RootViewController())
    let leftViewController = LeftViewController()
    let rightViewController = RightViewController()
    
    window = UIWindow(frame: UIScreen.main.bounds)
    window!.rootViewController = AppNavigationDrawerController(rootViewController: appToolbarController, leftViewController: leftViewController, rightViewController: rightViewController)
    window!.makeKeyAndVisible()
  }
}

