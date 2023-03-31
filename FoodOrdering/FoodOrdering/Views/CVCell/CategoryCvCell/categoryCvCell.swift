//
//  categoryCvCell.swift
//  FoodOrdering
//
//  Created by Abul Kashem on 31/3/23.
//

import UIKit
import Kingfisher

class categoryCvCell: UICollectionViewCell {
    @IBOutlet weak var categoryImageView: UIImageView!
    @IBOutlet weak var categoryTitleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()

    }
    
    func setup(category: DishCategory){
        categoryTitleLabel.text = category.name
        categoryImageView.kf.setImage(with: category.image.asUrl)
    }

}
