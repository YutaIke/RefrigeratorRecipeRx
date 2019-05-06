//
//  ExpirationListViewContollerSpy.swift
//  RefrigeratorRecipeRxTests
//
//  Created by 池友太 on 2019/05/06.
//  Copyright © 2019 Yuta Ike. All rights reserved.
//

import XCTest
@testable import RefrigeratorRecipeRx

class ExpirationListViewContollerSpy: ExpirationListViewInputProtocol {
    
    private(set) var expirationItemModels: ExpirationItemModels!
    
    func setExpirationItemModels(_ expirationItemModels: ExpirationItemModels) {
        self.expirationItemModels = expirationItemModels
    }
}
