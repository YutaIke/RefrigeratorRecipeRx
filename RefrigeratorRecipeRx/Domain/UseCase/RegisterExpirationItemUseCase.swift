//
//  RegisterExpirationItemUseCase.swift
//  RefrigeratorRecipeRx
//
//  Created by 池友太 on 2019/05/06.
//  Copyright © 2019 Yuta Ike. All rights reserved.
//

import Foundation

protocol RegisterExpirationItemUseCaseProtocol {
    func save(_ expirationItem: ExpirationItemModel)
}

class RegisterExpirationItemUseCase: RegisterExpirationItemUseCaseProtocol {
    
    private let repository: ExpirationListRepositoryProtocol
    
    public init(repository: ExpirationListRepositoryProtocol) {
        self.repository = repository
    }
    
    func save(_ expirationItem: ExpirationItemModel) {
        repository.save( ExpirationListTranslater.generate(expirationItemModel: expirationItem) )
    }
}
