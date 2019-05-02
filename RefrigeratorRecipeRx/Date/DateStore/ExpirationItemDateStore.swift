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
    func getAllExpirationItems() -> Observable<[ExpirationItemEntity]>
}

class ExpirationItemDataStore: ExpirationItemDataStoreProtocol {
    let realm = try! Realm()

    func getAllExpirationItems() -> Observable<[ExpirationItemEntity]> {
        let expirationDateObj = Array(realm.objects(ExpirationItemEntity.self))
        
        return Observable.just(expirationDateObj)
    }

}
