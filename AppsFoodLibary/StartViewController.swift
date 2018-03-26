//
//  StartViewController.swift
//  AppsFoodLibary
//
//  Created by Jerry on 08/03/18.
//  Copyright © 2018 Jerry. All rights reserved.
//

import UIKit
import Hero

class StartViewController: UIViewController {

    @IBAction func goStartButton(_ sender: Any) {
        let startVc = HomeViewController()
        self.hero.isEnabled = true
        navigationController?.setViewControllers([startVc], animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hero.isEnabled = true

      self.navigationController?.isNavigationBarHidden = true
    }


}
