//
//  ExpirationEntity.swift
//  RefrigeratorRecipeRx
//
//  Created by 池友太 on 2019/05/01.
//  Copyright © 2019 Yuta Ike. All rights reserved.
//

import Foundation
import RealmSwift

class ExpirationItemEntities {
    var expirationsList: [ExpirationItemEntity] = []
}

class ExpirationItemEntity: Object, Codable {
    @objc dynamic var id = 0
    @objc dynamic var productName = ""
    @objc dynamic var expirationDate = ""
    
    override static func primaryKey() -> String {
        return "id"
    }
}
