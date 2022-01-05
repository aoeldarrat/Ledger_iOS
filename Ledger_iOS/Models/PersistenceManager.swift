//
//  PersistenceManager.swift
//  Ledger_iOS
//
//  Created by Elisha Chirchir on 20/12/2021.
//

import Foundation

class PersistenceManager {
    
    private let defaults = UserDefaults.standard
    
    private let recordsKey = "records_key"
    
    var records: [Record]? {
        get { return defaults.array(forKey: recordsKey) as? [Record]}
        set { defaults.set(newValue, forKey: recordsKey)}
    }
}
