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
    func save(_ expirationItem: ExpirationItemModel)
    func loadExpirationList() -> Observable<ExpirationItemModels>
    func delete(_ expirationItem: ExpirationItemModel)
}

class ExpirationListUseCase: ExpirationListUseCaseProtocol {
    private let expirationListRepository: ExpirationListRepositoryProtocol
    
    public init(expirationListRepository: ExpirationListRepositoryProtocol){
        self.expirationListRepository = expirationListRepository
    }

    func save(_ expirationItem: ExpirationItemModel) {
        expirationListRepository.save(ExpirationListTranslater.generate(expirationItemModel: expirationItem))
    }

    func loadExpirationList() -> Observable<ExpirationItemModels>{
        let expirationList = expirationListRepository.getAllExpirationItemList()
        
        return expirationList.map { ExpirationListTranslater.generate(expirationItemEntities: $0) }
    }
    
    func delete(_ expirationItem: ExpirationItemModel) {
        expirationListRepository.delete( ExpirationListTranslater.generate(expirationItemModel: expirationItem) )
    }

}
