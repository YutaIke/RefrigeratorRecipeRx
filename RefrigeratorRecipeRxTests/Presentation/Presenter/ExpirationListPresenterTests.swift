//
//  ExpirationListPresenterTests.swift
//  RefrigeratorRecipeRxTests
//
//  Created by 池友太 on 2019/05/02.
//  Copyright © 2019 Yuta Ike. All rights reserved.
//

import XCTest
@testable import RefrigeratorRecipeRx
import RxSwift

class ExpirationListPresenterTests: XCTestCase {
    
    let viewInputSpy = ExpirationListViewContollerSpy()
    let wireframe = ExpirationListWireframe()
    let useCaseStub = ExpirationListUseCaseStub()
    
    var presenter: ExpirationListPresenterProtocol!

    override func setUp() {
        super.setUp()
        // ここでDI:依存性の注入を行う
        presenter = ExpirationListPresenter(viewInput: viewInputSpy, wireframe: wireframe, useCase: useCaseStub)
    }

    override func tearDown() {
    }

    func test_loadExpirationList_success_viewInputにExpirationItemModelsがセットされる_count3() {
        let expectedNumberOfExpirationList = 3
        let expirationItemModels = ExpirationItemModelStub.createExpirationItemModels(numberOfitems: expectedNumberOfExpirationList)
        useCaseStub.resultToBeReturned = Observable.just(expirationItemModels)
        
        presenter.loadExpirationList()
        XCTAssertEqual(expectedNumberOfExpirationList, self.viewInputSpy.expirationItemModels.expirationItemsList.count)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
