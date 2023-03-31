//
//  OnboardingCvCell.swift
//  FoodOrdering
//
//  Created by Abul Kashem on 31/3/23.
//

import UIKit

class OnboardingCvCell: UICollectionViewCell {
    
    @IBOutlet weak var slideImageView: UIImageView!
    @IBOutlet weak var slideTitleLabel: UILabel!
    
    @IBOutlet weak var slideDescriptionLabel: UILabel!
    func setup(_ slide: OnboardingSlide){
        slideImageView.image = slide.image
        slideTitleLabel.text = slide.title
        slideDescriptionLabel.text = slide.description
    }
}
