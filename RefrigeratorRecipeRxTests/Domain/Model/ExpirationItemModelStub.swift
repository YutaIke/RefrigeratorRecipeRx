//
//  ExpirationItemModelStub.swift
//  RefrigeratorRecipeRxTests
//
//  Created by 池友太 on 2019/05/06.
//  Copyright © 2019 Yuta Ike. All rights reserved.
//

import XCTest
@testable import RefrigeratorRecipeRx

class ExpirationItemModelStub {
    
    static func createExpirationItemModel(index: Int = 0) -> ExpirationItemModel {
        let entity = ExpirationItemEntity()
        entity.id = index
        entity.productName = #"productName \#(index)"#
        entity.expirationDate = #"expirationDate \#(index)"#
        return ExpirationItemModel(expirationItemEntity: entity)
//        return DramaModel(id: "\(index)", title: "title \(index)", imageURL: URL(string: "imageURL_\(index)")!, seasonCount: index)
    }
    
    static func createExpirationItemModels(numberOfitems number: Int) -> ExpirationItemModels {
        var expirationItemModels = ExpirationItemModels()
        for i in 0..<number {
            let expirationItem = ExpirationItemModelStub.createExpirationItemModel(index: i)
            expirationItemModels.expirationItemsList.append(expirationItem)
        }
        return expirationItemModels
    }
}
