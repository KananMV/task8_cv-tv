//
//  CustomShopCategoryCell.swift
//  task8_cv&tv
//
//  Created by Kenan Memmedov on 31.08.24.
//

import UIKit

class CustomShopCategoryCell: UICollectionViewCell {
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
        customView.backgroundColor = .clear
    }
}
