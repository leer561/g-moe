

import UIKit
import Material

class RootViewController: UIViewController {
  open override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = Color.grey.lighten5
    
    prepareToolbar()
  }
}

extension RootViewController {
  fileprivate func prepareToolbar() {
    guard let tc = toolbarController else {
      return
    }
    
    tc.toolbar.title = "首页"
  }
}

