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

struct User: Codable, Equatable {
    var id: String
    var preferredLanguage: String
    var preferredCurrency: String
    var books: [Book]
}

struct Book: Codable, Equatable {
    var id: String
    var name: String
    var description: String
    var createdDate: Date
    var lastEditDate: String
    var records: [Record]
    var balance: Balance
}

struct Record: Codable, Equatable {
    var id: String
    var bookId: String
    var name: String
    var description: String
    var createdDate: Date
    var lastEditDate: Date
    var entries: [Entry]
    var balance: Balance
}

struct Item: Codable, Equatable {
    var id: String
    var recordId: String
    var name: String
    var description: String
    var createdDate: Date
    var lastEditDate: Date
    var balance: Balance
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
