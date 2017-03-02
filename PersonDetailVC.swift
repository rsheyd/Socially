//
//  PersonDetailVC.swift
//  Socially
//
//  Created by Roman Sheydvasser on 2/24/17.
//  Copyright © 2017 RLabs. All rights reserved.
//

import UIKit

class PersonDetailVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        self.tabBarController?.tabBar.isHidden = false
    }
}
