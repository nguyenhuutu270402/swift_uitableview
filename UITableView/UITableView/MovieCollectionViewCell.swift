//
//  MovieCollectionViewCell.swift
//  UITableView
//
//  Created by Thien on 28/04/2023.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var textInfo: UILabel!
    @IBOutlet weak var textName: UILabel!
    @IBOutlet weak var movieImage: UIImageView!
    
    
    func setup(image: UIImage, txtName: String, txtTap: String) {
        movieImage.image = image
        textName.text = txtName
        textInfo.text = txtTap
    }
    
//    override init (style: UICollectionViewCell, reuseIdentifier: String) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        contentView.addSubview(textInfo)
//    }
}
