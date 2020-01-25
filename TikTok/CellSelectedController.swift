//
//  CellSelectedController.swift
//  TikTok
//
//  Created by Alsahlani, Yassin K on 1/23/20.
//  Copyright © 2020 Alsahlani, Yassin K. All rights reserved.
//

import UIKit

class CellSelectedController: UIViewController {

    var fullScreenImageView = UIImageView(frame: CGRect.zero)
    let backIcon = UIImageView(image: UIImage(named: "backIcon-white"))
    let shareIcon = UIImageView(image: UIImage(named: "shareIcon"))
    let heartIcon = UIImageView(image: UIImage(named: "heartIcon"))
    let followUserIcon = UIImageView(image: UIImage(named: "followUserIcon"))
    let profileIcon = UIImageView(frame: CGRect.zero)
    let lowerText = UILabel(frame: CGRect.zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.backgroundColor = .black
        view.addSubview(fullScreenImageView)
        
        fullScreenImageView.translatesAutoresizingMaskIntoConstraints = false
        fullScreenImageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        fullScreenImageView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        fullScreenImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        fullScreenImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        //Main Content
        fullScreenImageView.image = UIImage(named: "1")
        fullScreenImageView.contentMode = .scaleAspectFit
        
        
        //back icon
        view.addSubview(backIcon)
        
        backIcon.translatesAutoresizingMaskIntoConstraints = false
        backIcon.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 17.5).isActive = true
        backIcon.topAnchor.constraint(equalTo: view.topAnchor, constant: 0.06 * view.frame.height).isActive = true
        backIcon.heightAnchor.constraint(equalToConstant: 32).isActive = true
        backIcon.widthAnchor.constraint(equalToConstant: 20).isActive = true
        
        backIcon.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goBack(_:))))
        backIcon.isUserInteractionEnabled = true
        
        
        
        /*
            Right hand content
        */
        
        
        //share icon
        view.addSubview(shareIcon)
        shareIcon.translatesAutoresizingMaskIntoConstraints = false
        shareIcon.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        shareIcon.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -0.31 * view.frame.height).isActive = true
        
        
        //heart icon
        view.addSubview(heartIcon)
        heartIcon.translatesAutoresizingMaskIntoConstraints = false
        heartIcon.centerXAnchor.constraint(equalTo: shareIcon.centerXAnchor).isActive = true
        heartIcon.bottomAnchor.constraint(equalTo: shareIcon.topAnchor, constant: -20).isActive = true
        
        
        //profile icon
        profileIcon.backgroundColor = UIColor(red: 0.97, green: 0.97, blue: 0.97, alpha: 1)
        
        view.addSubview(profileIcon)
        profileIcon.translatesAutoresizingMaskIntoConstraints = false
        profileIcon.centerXAnchor.constraint(equalTo: heartIcon.centerXAnchor).isActive = true
        profileIcon.bottomAnchor.constraint(equalTo: heartIcon.topAnchor, constant: -25).isActive = true
        profileIcon.widthAnchor.constraint(equalToConstant: 40).isActive = true
        profileIcon.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        profileIcon.layer.cornerRadius = 20
        
        
        //follow user icon
        view.addSubview(followUserIcon)
        followUserIcon.translatesAutoresizingMaskIntoConstraints = false
        followUserIcon.centerYAnchor.constraint(equalTo: profileIcon.bottomAnchor).isActive = true
        followUserIcon.centerXAnchor.constraint(equalTo: profileIcon.centerXAnchor).isActive = true
        
        
        
        
        
        /*
            Lower text
         */
        
        lowerText.text = "#foryoupage #healthyrecipes #healthyfood #fitness # fitnesstips #easymeals"
        lowerText.textColor = UIColor(red: 0.96, green: 0.96, blue: 0.96, alpha: 1)
        view.addSubview(lowerText)
        lowerText.font.withSize(13)
        lowerText.numberOfLines = 0
        lowerText.translatesAutoresizingMaskIntoConstraints = false
        lowerText.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 17.5).isActive = true
        lowerText.widthAnchor.constraint(equalToConstant: 0.8 * view.frame.width).isActive = true
        lowerText.topAnchor.constraint(equalTo: view.bottomAnchor, constant: -0.2 * view.frame.height).isActive = true
        lowerText.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        
    }
    
    @objc func goBack(_ sender: UITapGestureRecognizer? = nil) {
        print("we are going back")
        dismiss(animated: true, completion: nil)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
