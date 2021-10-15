//
//  ViewController.swift
//  Ledger_iOS
//
//  Created by Abdulrahman Eldarrat on 5/27/21.
//

import UIKit

class RecordsViewController: UIViewController  {

    private var searchBar =  UISearchBar()
    private var tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView = UITableView(frame: .zero, style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
        
        view.addSubViews([tableView, searchBar], translatesAutoresizingMaskIntoConstraints: false)
        
        NSLayoutConstraint.activate([
            searchBar.topAnchor.constraint(equalTo: view.topAnchor),
            searchBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            searchBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),

            tableView.topAnchor.constraint(equalTo: searchBar.bottomAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            
        ])
    }
}

extension RecordsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        //This should be an add button
        cell.textLabel?.text = "Enter a new value"
        cell.accessoryType = UITableViewCell.AccessoryType.detailButton
        
        return cell
    }
    
    
}

extension RecordsViewController: UITableViewDelegate {

}

