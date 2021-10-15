//
//  LedgerCellView.swift
//  Ledger_iOS
//
//  Created by Abdulrahman Eldarrat on 6/1/21.
//

import Foundation
import UIKit

struct RecordCellViewModel {
    var balance: Balance = Balance(amount: 0.0, direction: .neutral)
    var amount: Float = 0.0
    var entries: [Entry] = []
    var name = ""
    
    init(record: Record) {
        self.balance = record.balance
        self.amount = record.amount
        self.entries = record.entries
    }
}

class RecordCellView: UITableViewCell {
    
    public var viewModel: RecordCellViewModel {
        didSet {
            viewModelDidUpdate(viewModel)
        }
    }
    
    static let cellReuseIdentifier = "recordReuseIdentifier"
    
    var balanceAmountLabel = UILabel()
    var amountLabel = UILabel()
    var numberOfEntriesLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.addSubViews([balanceAmountLabel, amountLabel, numberOfEntriesLabel], translatesAutoresizingMaskIntoConstraints: false)
        
        NSLayoutConstraint.activate([
        //Layout stuff here
        ])

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func viewModelDidUpdate(_ viewModel: RecordCellViewModel) {
        balanceAmountLabel.text = "\(viewModel.balance.amount)"
        amountLabel.text = "\(viewModel.amount)"
        numberOfEntriesLabel.text = "\(viewModel.entries.count)"
    }
}
