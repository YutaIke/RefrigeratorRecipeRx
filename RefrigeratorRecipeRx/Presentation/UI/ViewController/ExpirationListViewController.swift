//
//  ExpirationListViewController.swift
//  RefrigeratorRecipeRx
//
//  Created by 池友太 on 2019/04/25.
//  Copyright © 2019 Yuta Ike. All rights reserved.
//

import UIKit

protocol ExpirationListViewInputProtocol: class {
    func setExpirationItemModels(_: ExpirationItemModels)
}

class ExpirationListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var presenter: ExpirationListPresenterProtocol?
    var expirations: [ExpirationItemModel] = []
    
    public func inject(presenter: ExpirationListPresenter) {
        self.presenter = presenter
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "ExpirationListViewCell", bundle: nil), forCellReuseIdentifier: "ExpirationListViewCell")
    }
}

// MARK: ExpirationListViewInputProtocol
extension ExpirationListViewController: ExpirationListViewInputProtocol {
    func setExpirationItemModels(_ expirationItemModels: ExpirationItemModels) {
        expirations = expirationItemModels.expirationItemsList
        tableView.reloadData()
    }
}

// MARK: UITableViewDataSource
extension ExpirationListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // TODO: tableViewの実装
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // TODO: tableViewの実装
        return UITableViewCell()
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)

        presenter?.didTapExpirationList()
    }
}

// MARK: UITableViewDelegate
extension ExpirationListViewController: UITableViewDelegate {

}
