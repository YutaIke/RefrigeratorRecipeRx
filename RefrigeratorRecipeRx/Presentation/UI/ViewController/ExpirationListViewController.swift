//
//  ExpirationListViewController.swift
//  RefrigeratorRecipeRx
//
//  Created by 池友太 on 2019/04/25.
//  Copyright © 2019 Yuta Ike. All rights reserved.
//

import UIKit

protocol ExpirationListProtocol: class {
    
}

class ExpirationListViewController: UIViewController {
    
    var presenter: ExpirationListPresenterProtocol?
    
    public func inject(presenter: ExpirationListPresenter) {
        self.presenter = presenter
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ExpirationListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // TODO: tableViewの実装
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // TODO: tableViewの実装
        return UITableViewCell()
    }
    
    
}
