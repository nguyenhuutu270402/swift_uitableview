//
//  ViewController.swift
//  UITableView
//
//  Created by Thien on 28/04/2023.
//

import UIKit

class MovieCollectionViewController: UIViewController{
    
    public let searchResultsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: UIScreen.main.bounds.width / 3 - 20, height: 200)
//        layout.itemSize = CGSize(width: 100, height: 100)
        layout.minimumInteritemSpacing = 10
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(TestCollectionViewCell.self, forCellWithReuseIdentifier: TestCollectionViewCell.identifier)
        return collectionView
    }()
    
    
    @IBOutlet weak var movieCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        view.addSubview(movieCollectionView)
        searchResultsCollectionView.dataSource = self
        searchResultsCollectionView.delegate = self
    }
}

extension MovieCollectionViewController: UICollectionViewDataSource , UICollectionViewDelegate
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TestCollectionViewCell.identifier, for: indexPath) as! TestCollectionViewCell
        cell.configure(with: "")
        return cell
    }
    
    
}

