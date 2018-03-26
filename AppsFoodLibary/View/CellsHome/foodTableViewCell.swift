//
//  foodTableViewCell.swift
//  AppsFoodLibary
//
//  Created by Jerry on 07/03/18.
//  Copyright © 2018 Jerry. All rights reserved.
//

import UIKit

class foodTableViewCell: UICollectionViewCell {

    @IBOutlet weak var imgViewIcon: UIImageView!
    @IBOutlet weak var labelIcon: UILabel!
    @IBOutlet weak var imgViewColor: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }
    
    func updateViews(category: Category) {
        imgViewIcon.image = UIImage(named: category.imageName)
        labelIcon.text = category.title
        imgViewColor.image = UIImage(named: category.colorImg)
    }
    
}
