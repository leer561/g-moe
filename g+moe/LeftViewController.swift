

import UIKit
import Material
import SnapKit

class LeftViewController: UIViewController {
  fileprivate let menus:[String] = ["博丽神社", "雾雨邸", "闻闻新闻"]
  
  open override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = Color.white
    prepareMenu()
  }
}

extension LeftViewController {
  fileprivate func prepareMenu() {
    let tableView = UITableView(frame: view.bounds, style: UITableViewStyle.plain)
    tableView.dataSource = self
    tableView.delegate = self
    tableView.rowHeight = 70
    tableView.register(UITableViewCell.self, forCellReuseIdentifier: "menuCell")
    tableView.separatorColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1)
    self.view.addSubview(tableView)
    tableView.snp.makeConstraints { (make) in
      make.top.equalTo(self.view).offset(100)
      make.left.equalTo(self.view).offset(30)
      make.height.equalTo(self.view)
      make.width.equalTo(self.view)
    }
  }
}

extension LeftViewController {

  fileprivate func handleTransitionButton(indexPath: IndexPath) {
    switch indexPath.row {
    case 0:
      (navigationDrawerController?.rootViewController as? ToolbarController)?.transition(to: hakureiViewController(), completion: closeNavigationDrawer)
    default:
      (navigationDrawerController?.rootViewController as? ToolbarController)?.transition(to: TransitionedViewController(), completion: closeNavigationDrawer)
    }
    
  }
  
  fileprivate func closeNavigationDrawer(result: Bool) {
    navigationDrawerController?.closeLeftView()
  }
}

extension LeftViewController: UITableViewDataSource, UITableViewDelegate{
  // datasource
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return menus.count
  }
  
  // cell
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath) as UITableViewCell
    cell.textLabel?.text = menus[indexPath.row]
    cell.selectionStyle = .none
    return cell
  }
  
  // 响应转入view
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    handleTransitionButton(indexPath: indexPath)
  }
}
