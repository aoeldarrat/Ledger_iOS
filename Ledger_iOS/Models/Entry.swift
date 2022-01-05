//
//  Entry.swift
//  Ledger_iOS
//
//  Created by Elisha Chirchir on 20/12/2021.
//

import Foundation
import RealmSwift

class Entry: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var balance: Balance? = Balance.init()
    @Persisted var runningTotal: Float = 0.0
    @Persisted var desc: String = ""
    @Persisted var amount: Float = 0.0
    @Persisted var date: Date?
}
