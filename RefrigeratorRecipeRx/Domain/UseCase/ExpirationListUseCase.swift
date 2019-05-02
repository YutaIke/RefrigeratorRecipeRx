//
//  ExpirationListUseCase.swift
//  RefrigeratorRecipeRx
//
//  Created by 池友太 on 2019/05/02.
//  Copyright © 2019 Yuta Ike. All rights reserved.
//

import Foundation
import RxSwift

protocol ExpirationListUseCaseProtocol {
    func loadExpirationList() -> Observable<ExpirationItemModels>
}

class ExpirationListUseCase: ExpirationListUseCaseProtocol {
    private let expirationListRepository: ExpirationListRepositoryProtocol
    
    public init(expirationListRepository: ExpirationListRepositoryProtocol){
        self.expirationListRepository = expirationListRepository
    }
    
    func loadExpirationList() -> Observable<ExpirationItemModels>{
        let expirationList = expirationListRepository.getAllExpirationItemList()
        
        return expirationList.map { ExpirationListTranslater.generate(expirationItemEntities: $0) }
    }
    
    
}
