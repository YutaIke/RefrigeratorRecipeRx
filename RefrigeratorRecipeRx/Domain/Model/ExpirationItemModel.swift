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
    var id: Int? // idは必ずしも画面が知っておくべき情報ではないためnil許可
    var productName: String = ""
    var expirationDate: String = ""
 
    init() {}

    init(id: Int?, productName: String!, expirationDate: String!) {
        self.id = id
        self.productName = productName
        self.expirationDate = expirationDate
    }
    
    init(expirationItemEntity: ExpirationItemEntity) {
        self.id = expirationItemEntity.id
        self.productName = expirationItemEntity.productName
        self.expirationDate = expirationItemEntity.expirationDate
    }
}
