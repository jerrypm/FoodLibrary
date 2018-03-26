//
//  CategoryViewController.swift
//  AppsFoodLibary
//
//  Created by Jerry on 08/03/18.
//  Copyright © 2018 Jerry. All rights reserved.
//

import UIKit
import Hero
//import Foundation

class CategoryViewController: UIViewController {
    @IBOutlet weak var categView1: UIView!
    @IBOutlet weak var categView2: UIView!
    @IBOutlet weak var tableView1: UITableView!
    
    var sections = sectionsData
    override func viewDidLoad() {
        super.viewDidLoad()
//        let expAndCollVc = CollapsibleTableViewController()
        self.tableView1.contentSize = CGSize(width: self.view.frame.size.width, height: 1)
        
//        self.addChildViewController(expAndCollVc)
//        self.tableView1.addSubview(expAndCollVc.view)
//        expAndCollVc.willMove(toParentViewController: self)
        
        tableView1.estimatedRowHeight = 30.0
        tableView1.rowHeight = UITableViewAutomaticDimension
        
    }
    
}

extension CategoryViewController: UITableViewDataSource {
    
     func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].collapsed ? 0 : sections[section].items.count
    }
    
    // Cell
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CollapsibleTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as? CollapsibleTableViewCell ??
            CollapsibleTableViewCell(style: .default, reuseIdentifier: "cell")
        
        let item: Item = sections[indexPath.section].items[indexPath.row]
        
        cell.nameLabel.text = item.name
        cell.detailLabel.text = item.detail
        
        return cell
    }
    
     func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    // Header
    private func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "header") as? CollapsibleTableViewHeader ?? CollapsibleTableViewHeader(reuseIdentifier: "header")
        
        header.titleLabel.text = sections[section].name
        header.arrowLabel.text = ">"
        header.setCollapsed(sections[section].collapsed)
        
        header.section = section
        header.delegate = self
        
        return header
    }
    
    private func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44.0
    }
    
    private func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 1.0
    }
    
}

//
// MARK: - Section Header Delegate
//
extension CategoryViewController: CollapsibleTableViewHeaderDelegate {
    
    func toggleSection(_ header: CollapsibleTableViewHeader, section: Int) {
        let collapsed = !sections[section].collapsed
        
        // Toggle collapse
        sections[section].collapsed = collapsed
        header.setCollapsed(collapsed)
        
        tableView1.reloadSections(NSIndexSet(index: section) as IndexSet, with: .automatic)
    }
    
}



