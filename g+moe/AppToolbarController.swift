

import UIKit
import Material

class AppToolbarController: ToolbarController {
  fileprivate var menuButton: IconButton!
  fileprivate var moreButton: IconButton!
  
  override func prepare() {
    super.prepare()
    prepareMenuButton()
    prepareMoreButton()
    prepareStatusBar()
    prepareToolbar()
  }
}

extension AppToolbarController {
  fileprivate func prepareMenuButton() {
    menuButton = IconButton(image: Icon.cm.menu)
    menuButton.addTarget(self, action: #selector(handleMenuButton), for: .touchUpInside)
  }
  
  
  fileprivate func prepareMoreButton() {
    moreButton = IconButton(image: Icon.cm.moreVertical)
    moreButton.addTarget(self, action: #selector(handleMoreButton), for: .touchUpInside)
  }
  
  fileprivate func prepareStatusBar() {
    statusBarStyle = .lightContent
    
    // Access the statusBar.
    //        statusBar.backgroundColor = Color.green.base
  }
  
  fileprivate func prepareToolbar() {
    toolbar.leftViews = [menuButton]
    toolbar.rightViews = [moreButton]
  }
}

extension AppToolbarController {
  @objc
  fileprivate func handleMenuButton() {
    navigationDrawerController?.toggleLeftView()
  }
  
  @objc
  fileprivate func handleMoreButton() {
    navigationDrawerController?.toggleRightView()
  }
}
