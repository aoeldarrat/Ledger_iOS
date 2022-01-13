//
//  Item.swift
//  Ledger_iOS
//
//  Created by Elisha Chirchir on 20/12/2021.
//

import Foundation
import RealmSwift

class Item: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var projectId: ObjectId
    @Persisted var title: String = ""
    @Persisted var desc: String = ""
    @Persisted var entries: [Entry]?
    @Persisted var calculatedTotal: Float?
    @Persisted var createdDate: Date?
    @Persisted var lastEditDate: Date?
}
