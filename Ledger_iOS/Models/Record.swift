//
//  Record.swift
//  Ledger_iOS
//
//  Created by Elisha Chirchir on 13/11/2021.
//

import Foundation
import RealmSwift

class Record: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var bookId: ObjectId?
    @Persisted var name: String = ""
    @Persisted var desc: String = ""
    @Persisted var createdDate: Date?
    @Persisted var lastEditDate: Date?
    @Persisted var entries: [Entry]
    @Persisted var balance: Balance?
}
