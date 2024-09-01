//
//  ProductTableViewCell.swift
//  task8_cv&tv
//
//  Created by Kenan Memmedov on 01.09.24.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!{
        didSet{
            let flowLayout = UICollectionViewFlowLayout()
            collectionView.collectionViewLayout = flowLayout
            flowLayout.scrollDirection = .horizontal
            flowLayout.minimumLineSpacing = 16
            flowLayout.itemSize = CGSize(width: 168, height: 246)
            collectionView.delegate = self
            collectionView.dataSource = self
            let nib = UINib(nibName: "CustomProductsViewCell", bundle: nil )
            collectionView.register(nib, forCellWithReuseIdentifier: "CollectionViewCell")
            
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
extension ProductTableViewCell: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CustomProductsViewCell
        let text = "Iphone 13 pro max \nDescriptionDescription"
        let text2 = "US $540.00 \nUS $600.00"
        cell.setupCellWith(title: text)
        cell.setupCellWith2(title2: text2)
        return cell
    }
    
    
}
