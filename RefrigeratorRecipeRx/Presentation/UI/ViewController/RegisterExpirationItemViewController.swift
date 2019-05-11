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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let datePickerView: UIDatePicker = UIDatePicker()
        datePickerView.datePickerMode = UIDatePicker.Mode.date
        datePickerView.locale = NSLocale(localeIdentifier: "ja_JP") as Locale
        expirationDateTextField.inputView = datePickerView
        datePickerView.addTarget(self, action: #selector(datePickerValueChanged(sender:)), for: UIControl.Event.valueChanged)
        
        //datepicker上のtoolbarのdoneボタン
        toolBar = UIToolbar()
        toolBar.sizeToFit()
        let toolBarBtn = UIBarButtonItem(title: "完了", style: .plain, target: self, action: #selector(doneBtn))
        toolBar.items = [toolBarBtn]
        expirationDateTextField.inputAccessoryView = toolBar
    }
    
    @IBAction func registerExpirationItem(_ sender: Any) {
        guard let productName = self.productNameTextField.text,
            let expirationDate = self.expirationDateTextField.text
            else {
                print("ValidationError")
                return
        }
        let expirationItem = ExpirationItemModel(productName: productName, expirationDate: expirationDate)
        
        presenter?.save(expirationItem)
        self.navigationController?.popViewController(animated: true)
    }
    
    //datepickerが選択されたらtextfieldに表示
    @objc func datePickerValueChanged(sender:UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat  = "yyyy/MM/dd";
        expirationDateTextField.text = dateFormatter.string(from: sender.date)
    }

    //toolbarのdoneボタン
    @objc func doneBtn(){
        expirationDateTextField.resignFirstResponder()
    }

}
