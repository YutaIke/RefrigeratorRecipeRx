//
//  ExpirationListRepository.swift
//  RefrigeratorRecipeRx
//
//  Created by 池友太 on 2019/05/01.
//  Copyright © 2019 Yuta Ike. All rights reserved.
//

import Foundation
import RxSwift

protocol ExpirationListRepositoryProtocol {
    func getAllExpirationItemList() -> Observable<[ExpirationItemEntity]>
}

struct ExpirationListRepository: ExpirationListRepositoryProtocol {
    private let dataStore: ExpirationItemDataStoreProtocol
    
    public init(dataStore: ExpirationItemDataStore) {
        self.dataStore = dataStore
    }
    
    func getAllExpirationItemList() -> Observable<[ExpirationItemEntity]> {
        return dataStore.getAllExpirationItems()
    }
}
