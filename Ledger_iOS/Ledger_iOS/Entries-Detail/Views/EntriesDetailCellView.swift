//
//  EntriesDetailCellView.swift
//  Ledger_iOS
//
//  Created by Abdulrahman Eldarrat on 6/1/21.
//

import Foundation
import UIKit

class EntriesDetialCellView: UITableViewCell {
    
    struct ViewModel {
        var date = ""
        var amount: Float = 0.0
        var description = ""
        var balance = Balance(amount: 0.0, direction: .neutral)
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier) //might not need this if im making a custom cell
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
