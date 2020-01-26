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
    
    
    //Carousel
    var topCarousel = UIScrollView(frame: CGRect.zero)
    var pageControl = UIPageControl(frame: CGRect.zero)
    var images = ["A", "B", "C", "D"]
    
    
    var tableView: UITableView?
    let identifier = "Cell"
    ///width of screen
    var width: CGFloat!
    ///height of screen
    var height: CGFloat!
    
    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        searchBar.endEditing(true)
        return false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        width = view.frame.width
        height = view.frame.height
        
        
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
        
        let tableViewHeight = height!
        
        tableView = UITableView(frame: CGRect(x: 0, y: 0, width: width, height: tableViewHeight))
        tableView?.register(TableViewCell.self, forCellReuseIdentifier: identifier)
        
        tableView?.delegate = self
        tableView?.dataSource = self
        tableView?.showsVerticalScrollIndicator = false
        tableView?.showsHorizontalScrollIndicator = false
        
        
        //Top view
        topCarousel.frame = CGRect(x: 0, y: 0, width: width, height: 0.23 * height)
        
        for index in 0..<images.count {
            let xPos = topCarousel.frame.size.width * CGFloat(index)
            let imageView = UIImageView(frame: CGRect(origin: CGPoint(x: xPos, y: 0), size: topCarousel.frame.size))
            imageView.image = UIImage(named: images[index])
            topCarousel.addSubview(imageView)
        }
        
        topCarousel.contentSize = CGSize(width: width * CGFloat(images.count), height: topCarousel.frame.size.height)
        topCarousel.delegate = self
        topCarousel.isPagingEnabled = true
        topCarousel.showsHorizontalScrollIndicator = false
        topCarousel.backgroundColor = UIColor(red: 0.04, green: 0.1, blue: 0.43, alpha: 1.0)
        tableView?.tableHeaderView = topCarousel
        
        view.addSubview(tableView!)

        //        topCarousel.addSubview(pageControl)
        //        pageControl.translatesAutoresizingMaskIntoConstraints = false
        //        pageControl.centerXAnchor.constraint(equalTo: topCarousel.centerXAnchor).isActive = true
        //        pageControl.bottomAnchor.constraint(equalTo: topCarousel.bottomAnchor, constant: -12).isActive = true
        //        pageControl.heightAnchor.constraint(equalToConstant: 5).isActive = true
        //        pageControl.widthAnchor.constraint(equalToConstant: 80).isActive = true
        //        pageControl.numberOfPages = 7
        //        pageControl.backgroundColor = .black
        
        pageControl.frame = CGRect(x: 0, y: 0, width: 100, height: 24)
        pageControl.center.x = view.center.x
        pageControl.frame.origin.y = (0.23 * height) - pageControl.frame.size.height
        pageControl.numberOfPages = 4
        tableView!.addSubview(pageControl)
        
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = topCarousel.contentOffset.x / topCarousel.frame.size.width
        pageControl.currentPage = Int(pageNumber)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3   
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier) as! TableViewCell
        cell.cellHeight = height * 0.242
        cell.cellWidth = tableView.frame.size.width
        cell.viewController = self
        cell.setUp()
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return height * 0.242
    }


}

