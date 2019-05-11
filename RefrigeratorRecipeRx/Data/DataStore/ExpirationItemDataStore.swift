//
//  ExpirationItemDateStore.swift
//  RefrigeratorRecipeRx
//
//  Created by 池友太 on 2019/05/01.
//  Copyright © 2019 Yuta Ike. All rights reserved.
//

import Foundation
import RxSwift
import RealmSwift

protocol ExpirationItemDataStoreProtocol {
    func save(_ expirationItem: ExpirationItemEntity)
    func delete(_ expirationItem: ExpirationItemEntity)
    func getAllExpirationItems() -> Observable<[ExpirationItemEntity]>
}

class ExpirationItemDataStore: ExpirationItemDataStoreProtocol {

    func loadExpirationItem(id: Int) -> Results<ExpirationItemEntity> {
        let realm = try! Realm()
        let result = realm.objects(ExpirationItemEntity.self).filter("id=%@", id)
        return result
    }
    
    // FIXME: Resultsの型で返すように修正。Observableへの変換は取得に行う。
    func getAllExpirationItems() -> Observable<[ExpirationItemEntity]> {
        let realm = try! Realm()
        let expirationDateObj = Array(realm.objects(ExpirationItemEntity.self))
        return Observable.just(expirationDateObj)
    }

    func save(_ expirationItem: ExpirationItemEntity) {
        let realm = try! Realm()
        try! realm.write {
            realm.add(expirationItem, update: true)
        }
    }
    
    func delete(_ expirationItem: ExpirationItemEntity) {
        let realm = try! Realm()
        try! realm.write {
            realm.delete(loadExpirationItem(id: expirationItem.id))
        }
    }
}
