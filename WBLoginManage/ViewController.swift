//
//  ViewController.swift
//  WBLoginManage
//
//  Created by wisnuc-imac on 2017/12/11.
//  Copyright © 2017年 wisnuc-imac. All rights reserved.
//

import UIKit


class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    lazy var cardTableView:UITableView  =  {
        let tableView = UITableView(frame:self.view.bounds, style: UITableViewStyle.grouped)
        tableView.delegate = self
        tableView.dataSource = self
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(cardTableView);
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 64
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: NSStringFromClass(type(of: UITableViewCell()) as AnyClass))
        if(cell == nil){
         cell = UITableViewCell(style: UITableViewCellStyle.default
                , reuseIdentifier: NSStringFromClass(type(of: UITableViewCell()) as AnyClass));
            
        }
        return cell!
    }
    
   

}

