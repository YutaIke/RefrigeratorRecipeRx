//
//  ExpirationItemModelTests.swift
//  RefrigeratorRecipeRxTests
//
//  Created by 池友太 on 2019/05/06.
//  Copyright © 2019 Yuta Ike. All rights reserved.
//

import XCTest
@testable import RefrigeratorRecipeRx

class ExpirationItemModelTests: XCTestCase {

    var expirationItemEntity: ExpirationItemEntity!
    
    override func setUp() {
        super.setUp()
        expirationItemEntity = ExpirationItemEntity()
        expirationItemEntity.id = 1
        expirationItemEntity.productName = "Test Product Name"
        expirationItemEntity.expirationDate = "Test Expiration Date"
    }

    override func tearDown() {
    }

    func test_init_success_EntityToModel() {
        let model = ExpirationItemModel(expirationItemEntity: expirationItemEntity)
        
        XCTAssertEqual(model.productName, expirationItemEntity.productName)
        XCTAssertEqual(model.expirationDate, expirationItemEntity.expirationDate)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
