//
//  MainViewController.swift
//  DouYuzhibo
//
//  Created by 汪凯 on 16/10/22.
//  Copyright © 2016年 汪凯. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        addChildVC("Home")
        addChildVC("Live")
        addChildVC("Follow")
        addChildVC("Profile")
    
    }
    
    fileprivate func  addChildVC(_ storyName : String) {
        
        let chileVC = UIStoryboard(name:storyName,bundle:nil).instantiateInitialViewController()!
        
        addChildViewController(chileVC)
        
        
    }


   }
