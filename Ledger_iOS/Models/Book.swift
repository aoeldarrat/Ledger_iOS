//
//  Book.swift
//  Ledger_iOS
//
//  Created by Elisha Chirchir on 20/12/2021.
//

import Foundation
import RealmSwift

class Book: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var name: String = ""
    @Persisted var desc: String = ""
    @Persisted var createdDate: Date?
    @Persisted var lastEditDate: String?
    //@Persisted var records: [Record]?
    @Persisted var balance: Balance = Balance.init()
}
