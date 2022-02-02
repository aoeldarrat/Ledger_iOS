//
//  Entry.swift
//  Ledger_iOS
//
//  Created by Elisha Chirchir on 20/12/2021.
//

import RealmSwift

class EntryObject: Object, ObjectKeyIdentifiable {
    
    @Persisted(primaryKey: true) var id: String
    @Persisted var projectId: String
    @Persisted var itemId: String
    @Persisted var incomeExpense: String
    @Persisted var title: String = ""
    @Persisted var desc: String = ""
    @Persisted var createdDate: Date?
    @Persisted var lastEditDate: Date?
    @Persisted var numberOfUnits: Float
    @Persisted var typeOfUnit: String

    override static func primaryKey() -> String? {
      "id"
    }
    
    // Inverse to ItemObject
    let item = LinkingObjects(fromType: ItemObject.self, property: "entries")
}

class Entry {
    var id: String
    var projectId: String
    var itemId: String
    var incomeExpense: IncomeExpense
    var title: String = ""
    var desc: String = ""
    var createdDate: Date?
    var lastEditDate: Date?
    var numberOfUnits: Float
    var typeOfUnit: UnitType

    
    init(entry: Entry) {
        id = entry.id
        projectId = entry.projectId
        itemId = entry.itemId
        incomeExpense = entry.incomeExpense
        title = entry.title
        desc = entry.desc
        createdDate = entry.createdDate
        lastEditDate = entry.lastEditDate
        numberOfUnits = entry.numberOfUnits
        typeOfUnit = entry.typeOfUnit
    }
}
