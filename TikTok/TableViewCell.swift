//
//  TableViewCell.swift
//  TikTok
//
//  Created by Alsahlani, Yassin K on 1/22/20.
//  Copyright © 2020 Alsahlani, Yassin K. All rights reserved.
//

import UIKit

extension UITableViewCell: UICollectionViewDelegateFlowLayout {
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 0.28 * frame.width, height: collectionView.frame.height)
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1.8
    }
}

class TableViewCell: UITableViewCell, UICollectionViewDataSource {
    
    var cellHeight: CGFloat!
    var cellWidth: CGFloat!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath)
        cell.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.0)
        return cell
    }
    
    var collectionView: UICollectionView?
    var identifier = "Cell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    func setUp() {
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        collectionView?.delegate = self
        collectionView?.dataSource = self
        
        collectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: identifier)
        collectionView?.showsHorizontalScrollIndicator = false
        collectionView?.backgroundColor = .white
        addSubview(collectionView!)
        
        
        collectionView?.translatesAutoresizingMaskIntoConstraints = false
        collectionView?.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        collectionView?.widthAnchor.constraint(equalToConstant: cellWidth).isActive = true
        collectionView?.heightAnchor.constraint(equalToConstant: 0.68 * cellHeight).isActive = true
        collectionView?.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -0.07 * cellHeight).isActive = true
        
        
        //add icon
        addHashTag()
        addTopText()
    }
    
    
    func addHashTag() {
        let imageView = UIImageView(image: UIImage(named: "HashTag"))
        addSubview(imageView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 0.147 * cellHeight).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 0.147 * cellHeight).isActive = true
        imageView.topAnchor.constraint(equalTo: topAnchor, constant: 0.09 * cellHeight).isActive = true
    }
    
    func addTopText() {
        let upperText = UILabel(frame: CGRect.zero)
        upperText.text = "supportaustraliasupport"
        upperText.textAlignment = .left
        addSubview(upperText)
        upperText.translatesAutoresizingMaskIntoConstraints = false
        upperText.leftAnchor.constraint(equalTo: leftAnchor, constant: 37).isActive = true
        upperText.widthAnchor.constraint(equalToConstant: 200).isActive = true
        upperText.bottomAnchor.constraint(equalTo: (collectionView?.topAnchor)!, constant: -8).isActive = true
        upperText.heightAnchor.constraint(equalToConstant: 16).isActive = true
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
