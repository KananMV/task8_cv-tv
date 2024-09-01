//
//  CustomCategoryTableViewCell.swift
//  task8_cv&tv
//
//  Created by Kenan Memmedov on 31.08.24.
//

import UIKit

class CustomCategoryTableViewCell: UITableViewCell {
    struct Content {
        let imageName: String
        let text: String
    }
    let contents = [
        Content(imageName: "all_icon", text: "All"),
        Content(imageName: "phones_icon", text: "Phones"),
        Content(imageName: "laptops_icon", text: "Laptops"),
        Content(imageName: "camera_icon", text: "Cameras")
    ]
    @IBOutlet weak var collectionView: UICollectionView!{
        didSet{
            collectionView.delegate = self
            collectionView.dataSource = self
            let flowLayout = UICollectionViewFlowLayout()
            collectionView.collectionViewLayout = flowLayout
            flowLayout.scrollDirection = .horizontal
            let nib = UINib(nibName: "CustomCategoryCell", bundle: nil )
            collectionView.register(nib, forCellWithReuseIdentifier: "CustomCategoryCell")
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }

}
extension CustomCategoryTableViewCell: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        4
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCategoryCell", for: indexPath) as! CustomCategoryCell
        let content = contents[indexPath.row]
        cell.imageView.image = UIImage(named: content.imageName)
        cell.titleLabel.text = content.text
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let content = contents[indexPath.row]
        let label = UILabel()
        label.text = content.text
        let maxSize = CGSize(width: CGFloat.greatestFiniteMagnitude, height: 32)
        let textSize = label.sizeThatFits(maxSize)
        return CGSize(width: textSize.width + 30 + 18, height: 32)
    }
    
    
}
