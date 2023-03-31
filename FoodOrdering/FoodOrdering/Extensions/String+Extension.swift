//
//  String+Extension.swift
//  FoodOrdering
//
//  Created by Abul Kashem on 31/3/23.
//

import Foundation

extension String{
    var asUrl: URL?{
        return URL(string: self)
    }
}


