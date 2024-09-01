//
//  CustomCollectionViewCell.swift
//  task8_cv&tv
//
//  Created by Kenan Memmedov on 31.08.24.
//

import UIKit

class CustomCategoryCell: UICollectionViewCell {
    @IBOutlet weak var customView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    func setupCellWith(title: String){
        titleLabel.text = title
    }
    func setupCellWith(image: UIImage){
        imageView.image = image
    }
    func setup(){
        customView.layer.cornerRadius = 12
        customView.backgroundColor = UIColor(named: "ctgr_color")
    }
    
}
