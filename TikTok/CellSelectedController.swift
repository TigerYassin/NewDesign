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
        backIcon.topAnchor.constraint(equalTo: view.topAnchor, constant: 52.5).isActive = true
        
        backIcon.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goBack(_:))))
        backIcon.isUserInteractionEnabled = true
        
        
        
        /*
            Right hand content
        */
        
        
        //share icon
        view.addSubview(shareIcon)
        shareIcon.translatesAutoresizingMaskIntoConstraints = false
        shareIcon.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -14).isActive = true
        shareIcon.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -251).isActive = true
        
        
        //heart icon
        view.addSubview(heartIcon)
        heartIcon.translatesAutoresizingMaskIntoConstraints = false
        heartIcon.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -14).isActive = true
        heartIcon.bottomAnchor.constraint(equalTo: shareIcon.topAnchor, constant: -15).isActive = true
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
