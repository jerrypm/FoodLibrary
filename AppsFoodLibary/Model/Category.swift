//
//  Category.swift
//  AppsFoodLibary
//
//  Created by Jerry on 07/03/18.
//  Copyright © 2018 Jerry. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    private(set) public var colorImg: String
    
    init(title: String, imageName: String, colorImg: String)
    {
        self.title = title
        self.imageName = imageName
        self.colorImg = colorImg
    }
}
