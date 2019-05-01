//
//  ExpirationListModel.swift
//  RefrigeratorRecipeRx
//
//  Created by 池友太 on 2019/05/01.
//  Copyright © 2019 Yuta Ike. All rights reserved.
//

import Foundation

struct ExpirationListModels {
    var expirationsList: [ExpirationListModel]
}

struct ExpirationListModel: ExpirationListViewModelProtocol {
    var productName: String
    var expirationDate: String
 
    // TODO: init処理
//    init(rowExpirationListModel: ExpirationItemEntity)
}
