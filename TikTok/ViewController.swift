//
//  ViewController.swift
//  TikTok
//
//  Created by Alsahlani, Yassin K on 1/22/20.
//  Copyright © 2020 Alsahlani, Yassin K. All rights reserved.
//

/*
 
    TODO: remove the lines inbetween the cells and add custom one
 
 */

import UIKit


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var tableView: UITableView?
    let identifier = "Cell"
    var width: CGFloat!
    var height: CGFloat!
    var cellHeight: CGFloat!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        width = view.frame.width
        height = view.frame.height
        
        let leftMargin = width * 0.0387
        let tableViewHeight = height!
        
        tableView = UITableView(frame: CGRect(x: leftMargin, y: CGFloat(0), width: width - leftMargin, height: tableViewHeight))
        tableView?.register(TableViewCell.self, forCellReuseIdentifier: identifier)
        
        tableView?.delegate = self
        tableView?.dataSource = self
        tableView?.showsVerticalScrollIndicator = false
        tableView?.showsHorizontalScrollIndicator = false
        
        cellHeight = height * 0.242
        
        view.addSubview(tableView!)
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3   
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier) as! TableViewCell
        cell.cellHeight = cellHeight
        cell.cellWidth = tableView.frame.size.width
        cell.setUp()
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return cellHeight
    }


}

