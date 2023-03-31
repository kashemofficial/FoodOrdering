//
//  HomeViewController.swift
//  FoodOrdering
//
//  Created by Abul Kashem on 31/3/23.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var homeTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    func setupTableView(){
        let nib1 = UINib(nibName: "CategoryTvCell", bundle: nil)
        homeTableView.register(nib1, forCellReuseIdentifier: "CategoryTvCell")
        let nib2 = UINib(nibName: "DishesTvCell", bundle: nil)
        homeTableView.register(nib2, forCellReuseIdentifier: "DishesTvCell")
        let nib3 = UINib(nibName: "SpecialsTvCell", bundle: nil)
        homeTableView.register(nib3, forCellReuseIdentifier: "SpecialsTvCell")
        homeTableView.delegate = self
        homeTableView.dataSource = self
    }

}
extension HomeViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row{
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryTvCell") as? CategoryTvCell else{
                return UITableViewCell()
            }
            return cell
        case 1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "DishesTvCell") as? DishesTvCell else{
                return UITableViewCell()
            }
            return cell
        case 2:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "SpecialsTvCell") as? SpecialsTvCell else {
                return UITableViewCell()
            }
            return cell
        default: break
        }
       return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
            return 150
        }
        return 100
    }
}
