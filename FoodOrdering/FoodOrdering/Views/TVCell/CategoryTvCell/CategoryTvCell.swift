//
//  CategoryTvCell.swift
//  FoodOrdering
//
//  Created by Abul Kashem on 31/3/23.
//

import UIKit

class CategoryTvCell: UITableViewCell {
    
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    var category: [DishCategory] = [
        .init(id: "id1", name: "Africa Dish", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Africa Dish 1", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Africa Dish 2", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Africa Dish 3", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Africa Dish 4", image: "https://picsum.photos/100/200")
    
    ]
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupCollectionView()
    }

    func setupCollectionView(){
        let nib = UINib(nibName: "categoryCvCell", bundle: nil)
        categoryCollectionView.register(nib, forCellWithReuseIdentifier: "categoryCvCell")
        categoryCollectionView.delegate = self
        categoryCollectionView.dataSource = self
    }
    
}
extension CategoryTvCell: UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return category.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryCvCell", for: indexPath) as! categoryCvCell
        cell.setup(category: category[indexPath.row])
        return cell
    }
}
