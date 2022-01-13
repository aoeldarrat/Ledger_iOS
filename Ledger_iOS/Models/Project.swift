//
//  Book.swift
//  Ledger_iOS
//
//  Created by Elisha Chirchir on 20/12/2021.
//

import Foundation
import RealmSwift

class Project: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var title: String = ""
    @Persisted var desc: String = ""
    @Persisted var items: [Item]?
    @Persisted var createdDate: Date?
    @Persisted var lastEditDate: String?
}
