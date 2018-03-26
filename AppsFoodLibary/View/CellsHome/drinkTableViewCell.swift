//
//  drinkTableViewCell.swift
//  AppsFoodLibary
//
//  Created by Jerry on 07/03/18.
//  Copyright © 2018 Jerry. All rights reserved.
//

import UIKit


class drinkTableViewCell: UICollectionViewCell {

    @IBOutlet weak var drinkImg1: UIImageView!
    @IBOutlet weak var labeldrink1: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func updateViews(category: MenuList) {
        drinkImg1.image = UIImage(named: category.imageName)
        labeldrink1.text = category.title
    }

    

    
}
