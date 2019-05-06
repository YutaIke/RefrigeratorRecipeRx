//
//  ExpirationListTranslaterTests.swift
//  RefrigeratorRecipeRxTests
//
//  Created by 池友太 on 2019/05/06.
//  Copyright © 2019 Yuta Ike. All rights reserved.
//

import XCTest
@testable import RefrigeratorRecipeRx

class ExpirationListTranslaterTests: XCTestCase {
    
    var model: ExpirationItemModel!
    var entities: [ExpirationItemEntity]!
    
    override func setUp() {
        model = ExpirationItemModel()
        model.productName = "Test Product Name"
        model.expirationDate = "Test Expiration Date"
        
        entities = ExpirationItemEntityStub.createExpirationItemEntities(numberOfitems: 3)
    }
    
    override func tearDown() {
    }
    
    func test_generate_success_ModelToEntity() {
        let entity = ExpirationListTranslater.generate(expirationItemModel: model)
        
        XCTAssertEqual(entity.productName, model.productName)
        XCTAssertEqual(entity.expirationDate, model.expirationDate)
    }
    
    func test_generate_success_EntityArrayToModels() {
        let models = ExpirationListTranslater.generate(expirationItemEntities: entities)
        
        XCTAssertEqual(models.expirationItemsList.count, entities.count)
        for i in 0..<entities.count {
            XCTAssertEqual(models.expirationItemsList[i].productName, entities[i].productName)
            XCTAssertEqual(models.expirationItemsList[i].expirationDate, entities[i].expirationDate)
        }
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
