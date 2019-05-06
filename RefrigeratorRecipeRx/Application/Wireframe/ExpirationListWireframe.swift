//
//  ExpirationListWireframe.swift
//  RefrigeratorRecipeRx
//
//  Created by 池友太 on 2019/04/29.
//  Copyright © 2019 Yuta Ike. All rights reserved.
//

import UIKit

protocol ExpirationListWireframeProtocol {
    var viewController: ExpirationListViewController? { get set }
    
    func showDetail()
    func moveToAddScreen()
}

class ExpirationListWireframe: ExpirationListWireframeProtocol {
    weak var viewController: ExpirationListViewController?
    
    init(){}
    
    init(viewController: ExpirationListViewController) {
        self.viewController = viewController
    }
    
    func showDetail() {
        // TODO: 詳細画面遷移
//        let nextViewController =
//        let navigationController = UINavigationController(rootViewController: nextViewController)
//        viewController?.present(navigationController, animated: true, completion: nil)
    }

    func moveToAddScreen() {
        
    }

}
