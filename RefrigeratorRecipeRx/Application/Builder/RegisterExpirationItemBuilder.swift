//
//  RegisterExpirationItemBuilder.swift
//  RefrigeratorRecipeRx
//
//  Created by 池友太 on 2019/05/06.
//  Copyright © 2019 Yuta Ike. All rights reserved.
//

import UIKit

struct RegisterExpirationItemBuilder {
    func build() -> UIViewController {
        let viewController = UIStoryboard(name: "RegisterExpirationItemView", bundle: nil).instantiateViewController(withIdentifier: "RegisterExpirationItemView") as! RegisterExpirationItemViewController
        let dataStore = ExpirationItemDataStore()
        let repository = ExpirationListRepository(dataStore: dataStore)
        let useCase = RegisterExpirationItemUseCase(repository: repository)
        let presenter = RegisterExpirationItemPresenter(useCase: useCase)
        
        viewController.inject(presenter: presenter)
        
        return viewController
    }
}
