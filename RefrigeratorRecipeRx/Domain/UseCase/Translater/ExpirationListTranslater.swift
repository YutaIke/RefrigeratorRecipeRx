//
//  ExpirationListTranslater.swift
//  RefrigeratorRecipeRx
//
//  Created by 池友太 on 2019/05/02.
//  Copyright © 2019 Yuta Ike. All rights reserved.
//

import Foundation

/**
 * Entity <-> Modelを生成する処理
 **/
class ExpirationListTranslater {
    static func generate(expirationItemEntities: [ExpirationItemEntity]) -> ExpirationItemModels {
        var models = ExpirationItemModels()
        
        expirationItemEntities.forEach { data -> () in
            let model = ExpirationItemModel(expirationItemEntity: data)
            models.expirationItemsList.append(model)
        }
        return models
    }
    
    static func generate(expirationItemModel: ExpirationItemModel) -> ExpirationItemEntity {
        let entity = ExpirationItemEntity()
        entity.productName = expirationItemModel.productName
        entity.expirationDate = expirationItemModel.expirationDate
        return entity
    }
}
