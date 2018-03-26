//
//  HomeViewController.swift
//  AppsFoodLibary
//
//  Created by Jerry on 06/03/18.
//  Copyright © 2018 Jerry. All rights reserved.
//

import UIKit
import Hero

class HomeViewController: UIViewController {
    
    @IBOutlet weak var colectView1: UICollectionView!
    @IBOutlet weak var colectView2: UICollectionView!
    
    override func viewDidLoad() {
        self.hero.isEnabled = true
        super.viewDidLoad()
        self.navigationItem.title = "FOOD Library"
        self.navigationController?.isNavigationBarHidden = false
        setComponent()
        
        
    }
    
    func setComponent() {
        
        self.colectView1.dataSource = self
        self.colectView1.delegate = self
        self.colectView1.contentInset = UIEdgeInsets(top: 0, left: 6, bottom: 0, right: 6)
        
        self.colectView1.register(UINib(nibName: "drinkTableViewCell", bundle: nil), forCellWithReuseIdentifier: "cell1")
        
        self.colectView2.dataSource = self
        self.colectView2.delegate = self
        self.colectView2.contentInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        
        self.colectView2.register(UINib(nibName: "foodTableViewCell", bundle: nil), forCellWithReuseIdentifier: "cell2")
        
        if let layout1 = self.colectView1.collectionViewLayout as? UICollectionViewFlowLayout {
            layout1.minimumLineSpacing = 16
        }
        
        if let layout2 = self.colectView2.collectionViewLayout as? UICollectionViewFlowLayout {
            layout2.minimumLineSpacing = 16
        }
    }

}

extension HomeViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let Vc = CategoryViewController()
//        let Menulistj = DataService.instance.getMenuList()[indexPath.row]
//        Vc.imageName
//        Vc.imageName = DataService.instance.getMenuList()[indexPath.row]
        
        self.navigationController?.pushViewController(CategoryViewController(), animated: true)
    }
}

extension HomeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == colectView1{
            
            return DataService.instance.getMenuList().count
            
        }else{
            
            return DataService.instance.getFoodList().count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.colectView1 {
            let cell = colectView1.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as! drinkTableViewCell
           
            let category = DataService.instance.getMenuList()[indexPath.row]
            cell.updateViews(category: category)
            
            return cell
            
        } else if collectionView == self.colectView2 {
            let cell = colectView2.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! foodTableViewCell
            
            let category = DataService.instance.getFoodList()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        }
        
        return UICollectionViewCell()
    }
    
    
}

extension HomeViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == colectView1{
            
            return CGSize(width: 165, height: 100)
            
        }else if collectionView == colectView2{
            
            
            return CGSize(width: 100, height: 100)
            
        }else{
            
            
            return CGSize(width: 10, height: 10)
        }
        
    }
    
}
