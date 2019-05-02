//
//  ExpirationListRepository.swift
//  RefrigeratorRecipeRx
//
//  Created by 池友太 on 2019/05/01.
//  Copyright © 2019 Yuta Ike. All rights reserved.
//

import Foundation
import RxSwift
import RealmSwift

protocol ExpirationListRepositoryProtocol {
    func save(_ expirationItem: ExpirationItemEntity)
    func getAllExpirationItemList() -> Observable<[ExpirationItemEntity]>
    func createNewId() -> Int
}

struct ExpirationListRepository: ExpirationListRepositoryProtocol {
    private let dataStore: ExpirationItemDataStoreProtocol
    
    public init(dataStore: ExpirationItemDataStore) {
        self.dataStore = dataStore
    }
    
    func save(_ expirationItem: ExpirationItemEntity) {
        expirationItem.id = createNewId()
        dataStore.save(expirationItem)
    }
    
    func getAllExpirationItemList() -> Observable<[ExpirationItemEntity]> {
        return dataStore.getAllExpirationItems()
    }
    
    // 新しいIDを採番する。
    internal func createNewId() -> Int {
        let realm = try! Realm()
        return (realm.objects(ExpirationItemEntity.self).sorted(byKeyPath: "id", ascending: false).first?.id ?? 0) + 1
    }
}
