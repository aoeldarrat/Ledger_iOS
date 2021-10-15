//
//  PersistenceManager.swift
//  Ledger_iOS
//
//  Created by Abdulrahman Eldarrat on 6/9/21.
//

import Foundation


enum BalanceDirection: Int, Codable, Equatable  {
    case positive = 1 // Net gain
    case negative = 0 //Net loss
    case neutral = -1//No gain or loss
}

struct Record: Codable, Equatable {
    var balance: Balance
    var amount: Float
    var numberOfEntries: Int
    var entries: [Entry]
    var name: String
}

struct Entry: Codable, Equatable {
    var balance: Balance
    var runningTotal: Float
    var description: String
    var amount: Float
    var date: String
}

struct Balance: Codable, Equatable {

    var amount: Float
    var direction: BalanceDirection

}
class PersistenceManager {
    
    private let defaults = UserDefaults.standard
    
    private let recordsKey = "records_key"
    
    var records: [Record]? {
        get { return defaults.array(forKey: recordsKey) as? [Record]}
        set { defaults.set(newValue, forKey: recordsKey)}
    }
}
