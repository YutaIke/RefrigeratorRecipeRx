//
//  ListViewModel.swift
//  RefrigeratorRecipeRx
//
//  Created by 池友太 on 2019/05/01.
//  Copyright © 2019 Yuta Ike. All rights reserved.
//

import Foundation

protocol ExpirationListViewModelProtocol {
    var productName: String { get }
    var expirationDate: String { get }
}
