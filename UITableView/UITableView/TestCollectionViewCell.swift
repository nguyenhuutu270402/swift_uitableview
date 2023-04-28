//
//  TestCollectionViewCell.swift
//  UITableView
//
//  Created by Thien on 28/04/2023.
//

import UIKit

class TestCollectionViewCell: UICollectionViewCell {
    static let identifier = "TestCollectionViewCell"
    private let posterImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(posterImageView)
        applyConstraints()
    }
    
    required init(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        posterImageView.frame = contentView.bounds
        
    }
    
    private func applyConstraints() {
        let titlePosterUIImageViewConstraint = [
            posterImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            posterImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            posterImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            posterImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
//            posterImageView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width / 3 - 20),
        ]

        NSLayoutConstraint.activate(titlePosterUIImageViewConstraint)
    }
    
    public func configure(with model: String){
        if let url = URL(string: "https://2.bp.blogspot.com/-Dm8ns6HJc9E/UFciSGY3yuI/AAAAAAAADuw/ahvXNdwYNOo/s1600/cho-con.jpg") {
            let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print(error!)
                    return
                }
                DispatchQueue.main.async {
                    self.posterImageView.image = UIImage(data: data!)
                }
            }
            task.resume()
        }
    }
}
