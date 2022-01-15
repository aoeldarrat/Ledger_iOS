//
//  Entry.swift
//  Ledger_iOS
//
//  Created by Elisha Chirchir on 20/12/2021.
//

import RealmSwift

class Entry: Object, ObjectKeyIdentifiable {
    @objc dynamic var id: String
    @objc dynamic var projectId: String
    @objc dynamic var itemId: String
    @objc dynamic var incomeExpense: IncomeExpense
    @objc dynamic var title: String = ""
    @objc dynamic var desc: String = ""
    @objc dynamic var createdDate: Date?
    @objc dynamic var lastEditDate: Date?
    @objc dynamic var numberOfUnits: Float
    @objc dynamic var typeOfUnit: UnitType

    
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
