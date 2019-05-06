//
//  RegisterExpirationItemViewController.swift
//  RefrigeratorRecipeRx
//
//  Created by 池友太 on 2019/05/06.
//  Copyright © 2019 Yuta Ike. All rights reserved.
//

import UIKit

class RegisterExpirationItemViewController: UIViewController {
    
    @IBOutlet weak var productNameTextField: UITextField!
    @IBOutlet weak var expirationDateTextField: UITextField!
    @IBOutlet weak var notificationSwitch: UISwitch!
    
    var presenter: RegisterExpirationItemPresenterProtocol?
    
    var toolBar: UIToolbar!

    public func inject(presenter: RegisterExpirationItemPresenterProtocol) {
        self.presenter = presenter
    }
    
}
