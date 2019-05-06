//
//  ExpirationListModel.swift
//  RefrigeratorRecipeRx
//
//  Created by 池友太 on 2019/05/01.
//  Copyright © 2019 Yuta Ike. All rights reserved.
//

import Foundation

struct ExpirationItemModels {
    var expirationItemsList: [ExpirationItemModel] = []
}

struct ExpirationItemModel: ExpirationListViewModelProtocol {
    var productName: String = ""
    var expirationDate: String = ""
 
    init() {}

    init(productName: String!, expirationDate: String!) {
        self.productName = productName
        self.expirationDate = expirationDate
    }

    init(expirationItemEntity: ExpirationItemEntity) {
        self.productName = expirationItemEntity.productName
        self.expirationDate = expirationItemEntity.expirationDate
    }
}
