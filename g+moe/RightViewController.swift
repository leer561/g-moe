

import UIKit
import Material

class RightViewController: UIViewController {
  fileprivate var rootButton: FlatButton!
  
  open override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = Color.blue.base
    
    prepareRootButton()
  }
}

extension RightViewController {
  fileprivate func prepareRootButton() {
    rootButton = FlatButton(title: "Root VC", titleColor: .white)
    rootButton.pulseColor = .white
    rootButton.addTarget(self, action: #selector(handleRootButton), for: .touchUpInside)
    
    view.layout(rootButton).horizontally().center()
  }
}

extension RightViewController {
  @objc
  fileprivate func handleRootButton() {
    // Transition the entire NavigationDrawer rootViewController.
    //        navigationDrawerController?.transition(to: RootViewController(), completion: closeNavigationDrawer)
    
    // Transition the ToolbarController rootViewController that is in the NavigationDrawer rootViewController.
    (navigationDrawerController?.rootViewController as? ToolbarController)?.transition(to: RootViewController(), completion: closeNavigationDrawer)
  }
  
  fileprivate func closeNavigationDrawer(result: Bool) {
    navigationDrawerController?.closeRightView()
  }
}
