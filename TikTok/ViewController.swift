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

    
    
    var searchBar = UITextField(frame: CGRect(x: 0, y: 0, width: 310, height: 32.5))
    let lightGrey = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.0)
    
    
    var tableView: UITableView?
    let identifier = "Cell"
    var width: CGFloat!
    var height: CGFloat!
    var cellHeight: CGFloat!
    
    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        searchBar.endEditing(true)
        return false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        width = view.frame.width
        height = view.frame.height
        
        // Do any additional setup after loading the view.
        
        
        searchBar.placeholder = "Search"
        
        searchBar.backgroundColor = lightGrey
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: searchBar)
        
        
        //  --- Search Bar ---
        
        //border radius
        searchBar.layer.cornerRadius = 3
        
        //padding
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 0.1 * width, height: searchBar.frame.height))
        
        
        let searchIcon = UIImageView(frame: CGRect(x: 11, y: 0, width: 14, height: 14.43))
        searchIcon.center.y = searchBar.center.y
        searchIcon.image = UIImage(named: "searchIcon")
        
        
        paddingView.addSubview(searchIcon)
        searchBar.leftView = paddingView
        searchBar.leftViewMode = UITextField.ViewMode.always
        
        
        
        
        
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

