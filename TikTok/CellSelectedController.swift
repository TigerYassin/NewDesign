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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.addSubview(fullScreenImageView)
        
        fullScreenImageView.translatesAutoresizingMaskIntoConstraints = false
        fullScreenImageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        fullScreenImageView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        fullScreenImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        fullScreenImageView.heightAnchor.constraint(equalToConstant: 737).isActive = true
        
        
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
