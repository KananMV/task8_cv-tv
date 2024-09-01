//
//  CustomShopCategoryCell2.swift
//  task8_cv&tv
//
//  Created by Kenan Memmedov on 01.09.24.
//

import UIKit

class CustomShopCategoryCell2: UICollectionViewCell {
    @IBOutlet weak var customView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelView: UILabel!
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
}
