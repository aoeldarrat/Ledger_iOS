//
//  Balance.swift
//  Ledger_iOS
//
//  Created by Elisha Chirchir on 13/11/2021.
//

import Foundation
import RealmSwift

class Balance: Object {
    @Persisted var amount: Float = 0.0
    var direction: BalanceDirection
    
    override init() {
        
    }
}
