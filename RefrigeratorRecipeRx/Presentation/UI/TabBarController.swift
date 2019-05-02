//
//  TabBarController.swift
//  RefrigeratorRecipeRx
//
//  Created by 池友太 on 2019/04/24.
//  Copyright © 2019 Yuta Ike. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let expirationListViewController = ExpirationListBuilder().build()
        self.viewControllers = [UINavigationController(rootViewController: expirationListViewController)]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
