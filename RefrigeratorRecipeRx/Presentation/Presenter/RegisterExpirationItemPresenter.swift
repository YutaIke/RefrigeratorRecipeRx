//
//  RegisterExpirationItemPresenter.swift
//  RefrigeratorRecipeRx
//
//  Created by 池友太 on 2019/05/06.
//  Copyright © 2019 Yuta Ike. All rights reserved.
//

import Foundation

protocol RegisterExpirationItemPresenterProtocol {
    func save(_ expirationItem: ExpirationItemModel)
}

class RegisterExpirationItemPresenter: RegisterExpirationItemPresenterProtocol {

    let useCase: RegisterExpirationItemUseCaseProtocol!
    
    public required init(useCase: RegisterExpirationItemUseCaseProtocol) {
        self.useCase = useCase
    }
    
    func save(_ expirationItem: ExpirationItemModel){
        useCase.save(expirationItem)
    }

}
