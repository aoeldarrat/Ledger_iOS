//
//  EntriesViewController.swift
//  Ledger_iOS
//
//  Created by Abdulrahman Eldarrat on 6/1/21.
//

import Foundation
import UIKit

//Each Ledger is a new group, each group contains entries - This is the page that displays
//All the different Entries of a Ledger
class EntriesDetailViewController: UIViewController { //TODO: Detail table view page where we see the entries of this ledger
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubViews([searchBar, tableView], translatesAutoresizingMaskIntoConstraints: false)

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
    
    private var searchBar = UISearchBar()
    private var tableView = UITableView()

    
}

extension EntriesDetailViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: EntriesDetialCellView = EntriesDetialCellView()
        
        
        return cell
    }
    
    
}

extension EntriesDetailViewController: UITableViewDelegate {
    
}
