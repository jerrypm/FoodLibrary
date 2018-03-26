//
//  ExampleData.swift
//  ios-swift-collapsible-table-section
//
//  Created by Yong Su on 8/1/17.
//  Copyright © 2017 Yong Su. All rights reserved.
//

import Foundation

//
// MARK: - Section Data Structure
//
public struct Item {
    var name: String
    var detail: String
    
    public init(name: String, detail: String) {
        self.name = name
        self.detail = detail
    }
}

 public struct Section1 {
    var name: String
    var items: [Item]
    var collapsed: Bool
    
    public init(name: String, items: [Item], collapsed: Bool = false) {
        self.name = name
        self.items = items
        self.collapsed = collapsed
    }
}

public var sectionsData: [Section1] = [
    Section1(name: "Mac", items: [
        Item(name: "MacBook", detail: "Apple's ultraportable laptop, trading portability for speed and connectivity."),
        Item(name: "Accessories", detail: "Retina Display The brightest, most colorful Mac notebook display ever. The display in the MacBook Pro is the best ever in a Mac notebook."),
        Item(name: "iPad Pro", detail: "iPad Pro delivers epic power, in 12.9-inch and a new 10.5-inch size."),
        Item(name: "iPhone 6s", detail: "The iPhone 6S has a similar design to the 6 but updated hardware, including a strengthened chassis and upgraded system-on-chip, a 12-megapixel camera, improved fingerprint recognition sensor, and LTE Advanced support.")
    ])
]
