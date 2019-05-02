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
    func save(_ expirationItem: ExpirationItemModel)
    func getAllExpirationItems() -> Observable<[ExpirationItemEntity]>
}

class ExpirationItemDataStore: ExpirationItemDataStoreProtocol {

    func getAllExpirationItems() -> Observable<[ExpirationItemEntity]> {
        let realm = try! Realm()
        let expirationDateObj = Array(realm.objects(ExpirationItemEntity.self))
        return Observable.just(expirationDateObj)
    }

    func save(_ expirationItem: ExpirationItemModel) {
        let realm = try! Realm()
        try! realm.write {
            realm.add(ExpirationListTranslater.generate(expirationItemModel: expirationItem), update: true)
        }
    }
}
