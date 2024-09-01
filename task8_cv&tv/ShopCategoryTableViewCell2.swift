//
//  ShopCategoryTableViewCell2.swift
//  task8_cv&tv
//
//  Created by Kenan Memmedov on 01.09.24.
//

import UIKit

class ShopCategoryTableViewCell2: UITableViewCell {
    @IBOutlet weak var collectionVIew: UICollectionView!{
        didSet{
            collectionVIew.delegate = self
            collectionVIew.dataSource = self
            let flowLayout = UICollectionViewFlowLayout()
            collectionVIew.collectionViewLayout = flowLayout
            flowLayout.scrollDirection = .horizontal
            let nib = UINib(nibName: "CustomShopCategoryCell2", bundle: nil )
            collectionVIew.register(nib, forCellWithReuseIdentifier: "CustomShopCategoryCell2")
        }
    }
    struct Content {
        let imageName: String
        let text: String
    }
    let contents = [
        Content(imageName: "headphone_image", text: "Headphone"),
        Content(imageName: "gaming_image", text: "Gaming"),
        Content(imageName: "camera_image", text: "Camera"),
        Content(imageName: "else_image", text: "Else")
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
extension ShopCategoryTableViewCell2: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomShopCategoryCell2", for: indexPath) as! CustomShopCategoryCell2
        let content = contents[indexPath.row]
        cell.imageView.image = UIImage(named: content.imageName)
        cell.labelView.text = content.text
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 80, height: 112)

    }
    
    
}
