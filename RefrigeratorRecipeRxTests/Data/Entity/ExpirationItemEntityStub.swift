//
//  ExpirationItemEntityStub.swift
//  RefrigeratorRecipeRxTests
//
//  Created by 池友太 on 2019/05/06.
//  Copyright © 2019 Yuta Ike. All rights reserved.
//

import XCTest
@testable import RefrigeratorRecipeRx

class ExpirationItemEntityStub {
    
    static func createExpirationItemEntity(index: Int = 0) -> ExpirationItemEntity {
        let entity = ExpirationItemEntity()
        entity.id = index
        entity.productName = #"productName \#(index)"#
        entity.expirationDate = #"expirationDate \#(index)"#
        return entity
    }
    
    static func createExpirationItemEntities(numberOfitems number: Int) -> [ExpirationItemEntity] {
        var expirationItemEntities: [ExpirationItemEntity] = []
        for i in 0..<number {
            let expirationItem = ExpirationItemEntityStub.createExpirationItemEntity(index: i)
            expirationItemEntities.append(expirationItem)
        }
        return expirationItemEntities
    }
}
