//
//  hakureiViewController.swift
//  g+moe
//
//  Created by lipeng on 2017/1/17.
//  Copyright © 2017年 lipeng. All rights reserved.
//

import UIKit
import Material
import SnapKit

class hakureiViewController: UIViewController {

  open override func viewDidLoad() {
    super.viewDidLoad()
    prepareToolbar()
    prepareDivineBtn()
  }
}

extension hakureiViewController {
  fileprivate func prepareToolbar() {
    guard let tc = toolbarController else {
      return
    }
    tc.toolbar.title = "博丽神社"
    tc.toolbar.detail = ""
  }
}

extension hakureiViewController{
  fileprivate func prepareDivineBtn(){
    let btn = UIButton(type: UIButtonType.system)
    btn.setTitle("占卜", for: UIControlState.normal)
    self.view.addSubview(btn)
    btn.snp.makeConstraints { (make) in
      make.width.equalTo(100)
      make.height.equalTo(100)
      make.center.equalTo(self.view)
    }
  }
}
