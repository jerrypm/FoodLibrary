//
//  DataService.swift
//  AppsFoodLibary
//
//  Created by Jerry on 07/03/18.
//  Copyright © 2018 Jerry. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    
    let drinkList = [
        MenuList(title: "Awesome Drinks", imageName: "drinks"),
        MenuList(title: "Healthy & Green", imageName: "greens.png"),
        MenuList(title: "Good Drinks", imageName: "dessert.png")
        
    ]
    
    let foodlist = [
       Category(title: "Buffet", imageName: "potatoes.png", colorImg: "Oval1.png"),
       Category(title: "Chinese", imageName: "rice.png", colorImg: "Oval2.png"),
       Category(title: "Japanese", imageName: "sushi-1.png", colorImg: "Oval3.png"),
       Category(title: "Steak", imageName: "steak.png", colorImg: "Oval4.png"),
       Category(title: "Dessert", imageName: "cupcake.png", colorImg: "Oval5.png"),
       Category(title: "Bar", imageName: "glass-3.png", colorImg: "Oval6.png"),
       Category(title: "Seafood", imageName: "shrimp.png", colorImg: "Oval7.png"),
       Category(title: "Salad", imageName: "potatoes-1.png", colorImg: "Oval8.png"),
       Category(title: "Barbecue", imageName: "kebab-1.png", colorImg: "Oval9.png")
        

    ]
    
    
    func getMenuList() -> [MenuList] {
        return drinkList
    }
    
    func getFoodList() -> [Category] {
        return foodlist
    }
    
  
}











