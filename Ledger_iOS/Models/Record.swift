//
//  Record.swift
//  Ledger_iOS
//
//  Created by Elisha Chirchir on 20/12/2021.
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
    //@Persisted var entries: [Entry] = nil
    //@Persisted var balance: Balance? = nil
}