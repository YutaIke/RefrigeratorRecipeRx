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
        
        // ボタン作成
        let addButton: UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(moveToRegisterView(sender:)))
            
        // ナビゲーションバーの右側にボタン付与
        self.navigationItem.setRightBarButtonItems([addButton], animated: true)
        self.tableView.separatorInset = UIEdgeInsets.zero
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        presenter?.loadExpirationList()
    }
    
    @objc internal func moveToRegisterView(sender: UIButton) {
        presenter?.moveToRegisterView()
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
        return expirations.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ExpirationListViewCell", for: indexPath) as! ExpirationListViewCell
        cell.bind(from: expirations[indexPath.row])
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)

        presenter?.didTapExpirationList()
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        let deleteButton: UITableViewRowAction = UITableViewRowAction(style: .normal, title: "削除") { (action, index) -> Void in
            self.presenter?.delete(self.expirations[indexPath.row])
            self.expirations.remove(at: indexPath.row)

            tableView.deleteRows(at: [indexPath], with: .fade)
        }
        deleteButton.backgroundColor = UIColor.red
        
        // TODO: 編集処理の実装
        let editButton: UITableViewRowAction = UITableViewRowAction(style: .normal, title: "編集") { (action, index) -> Void in
//            self.editExpirationDateItem(at: indexPath.row)
        }
        editButton.backgroundColor = UIColor.green
        
        return [deleteButton, editButton]
    }
}

// MARK: UITableViewDelegate
extension ExpirationListViewController: UITableViewDelegate {

}
