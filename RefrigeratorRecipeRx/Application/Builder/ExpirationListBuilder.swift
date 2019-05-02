//
//  ExpirationListBuilder.swift
//  RefrigeratorRecipeRx
//
//  Created by 池友太 on 2019/04/29.
//  Copyright © 2019 Yuta Ike. All rights reserved.
//

import UIKit

struct ExpirationListBuilder {
    func build() -> UIViewController {
        let viewController = ExpirationListViewController()
        let wireframe = ExpirationListWireframe()
        
        let presenter = ExpirationListPresenter(wireframe: wireframe)
        viewController.inject(presenter: presenter)
        wireframe.viewController = viewController
        
        return viewController
    }
}
