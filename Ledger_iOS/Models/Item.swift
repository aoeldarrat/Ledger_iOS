//
//  Item.swift
//  Ledger_iOS
//
//  Created by Elisha Chirchir on 20/12/2021.
//

import RealmSwift

class Item: Object, ObjectKeyIdentifiable {
    @objc dynamic var id: String
    @objc dynamic var projectId: String
    @objc dynamic var title: String?
    @objc dynamic var desc: String?
    @objc dynamic var entries: Array<Entry>?
    @objc dynamic var calculatedTotal: Float = 0.0
    @objc dynamic var createdDate: Date?
    @objc dynamic var lastEditDate: Date?
    
    init(item: Item) {
        id = item.id
        projectId = item.projectId
        title = item.title
        desc = item.desc
        entries = item.entries
        calculatedTotal = item.calculatedTotal
        createdDate = item.createdDate
        lastEditDate = item.lastEditDate
    }
}
