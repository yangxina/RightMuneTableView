//
//  ViewController.swift
//  RightMuneTabel
//
//  Created by 504672006@qq.com on 07/06/2018.
//  Copyright (c) 2018 504672006@qq.com. All rights reserved.
//

import UIKit
import RightMuneTabel
import NicooSwiftRouter
class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if #available(iOS 7.0, *) {
            if self.responds(to:#selector(getter: edgesForExtendedLayout) ) {
                
                self.edgesForExtendedLayout = .bottom
            }
        }
       
        tableView.tableFooterView = UIView()
        loadRightBarButton()
    }
    private func loadRightBarButton() {
        let right = UIBarButtonItem(title: "show",  style: .plain, target: self, action: #selector(rightBarButtonClick))
        right.setTitleTextAttributes([NSAttributedStringKey.font: UIFont.systemFont(ofSize: 16), NSAttributedStringKey.foregroundColor: UIColor.purple], for: .normal)
        navigationItem.rightBarButtonItem = right
    }
    
    @objc func rightBarButtonClick() {
         //右上角菜单按钮
        let mune = RightMuneTable(frame: self.view.bounds)
        mune.imageSource = [UIImage(named: "collection"), UIImage(named: "downLoad"), UIImage(named: "shareAction"),UIImage(named: "collection")] as? [UIImage]
        mune.titleSource = ["收藏","下载","分享","分享"] //,"分享","分享"
        mune.selectedIndex = { (index) in
            print("index = \(index)")
            if index == 1 {
                
            }else if index == 0 {
               
            }else {
              
            }
            
            
        }
        mune.showInView(self.view)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 25
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

