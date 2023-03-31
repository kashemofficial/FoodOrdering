//
//  UIView+Extension.swift
//  FoodOrdering
//
//  Created by Abul Kashem on 31/3/23.
//

import UIKit

extension UIView{
    @IBInspectable var cornerRadius: CGFloat {
        get {return self.cornerRadius}
        set {self.layer.cornerRadius = newValue}
    }
}
