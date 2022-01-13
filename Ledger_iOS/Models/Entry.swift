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
    @Persisted var projectId: ObjectId
    @Persisted var itemId: ObjectId
    @Persisted var incomeExpense = IncomeExpense.neutral
    @Persisted var title: String = ""
    @Persisted var description: String = ""
    @Persisted var numberOfUnits: Double = 0
    @Persisted var createdDate: Date?
    @Persisted var lastEditDate: Date?
    @Persisted var numberOfUnits: Float
    @Persisted var typeOfUnit: UnitType
}
