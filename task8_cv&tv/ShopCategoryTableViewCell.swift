//
//  ShopCategoryTableViewCell.swift
//  task8_cv&tv
//
//  Created by Kenan Memmedov on 31.08.24.
//

import UIKit

class ShopCategoryTableViewCell: UITableViewCell {
    @IBOutlet weak var collectionView: UICollectionView!{
        didSet{
            collectionView.delegate = self
            collectionView.dataSource = self
            let flowLayout = UICollectionViewFlowLayout()
            collectionView.collectionViewLayout = flowLayout
            flowLayout.scrollDirection = .horizontal
            let nib = UINib(nibName: "CustomShopCategoryCell1", bundle: nil )
            collectionView.register(nib, forCellWithReuseIdentifier: "CustomShopCategoryCell1")
            
                        
        }
    }
    struct Content {
        let imageName: String
        let text: String
    }
    let contents = [
        Content(imageName: "smartphone_image", text: "Smartphone"),
        Content(imageName: "laptopImage_image", text: "Laptop"),
        Content(imageName: "watch_image", text: "Laptops"),
        Content(imageName: "tablet_image", text: "Tablet")
    ]
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
extension ShopCategoryTableViewCell: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomShopCategoryCell1", for: indexPath) as! CustomShopCategoryCell
        let content = contents[indexPath.row]
        cell.imageView.image = UIImage(named: content.imageName)
        cell.titleLabel.text = content.text
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 80, height: 112)
    }
    
}
