//
//  ExpirationListUseCaseStub.swift
//  RefrigeratorRecipeRxTests
//
//  Created by 池友太 on 2019/05/06.
//  Copyright © 2019 Yuta Ike. All rights reserved.
//

import XCTest
@testable import RefrigeratorRecipeRx
import RxSwift

class ExpirationListUseCaseStub: ExpirationListUseCaseProtocol {
    
    var resultToBeReturned: Observable<ExpirationItemModels>!
    
    func save(_ expirationItem: ExpirationItemModel) {
        
    }
    
    func loadExpirationList() -> Observable<ExpirationItemModels> {
        return resultToBeReturned
    }
    


}
