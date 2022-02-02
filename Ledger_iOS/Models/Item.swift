//
//  Item.swift
//  Ledger_iOS
//
//  Created by Elisha Chirchir on 20/12/2021.
//

import RealmSwift

//Realm object
class ItemObject: Object, ObjectKeyIdentifiable {
    
    @Persisted(primaryKey: true) var id: String
    @Persisted var projectId: String
    @Persisted var title: String?
    @Persisted var desc: String?
    
    let entries = List<EntryObject>()

    @Persisted var calculatedTotal: Float = 0.0
    @Persisted var createdDate: Date?
    @Persisted var lastEditDate: Date?
    
    override static func primaryKey() -> String? {
      "id"
    }
    
    // Inverse to ProjectObject
    let project = LinkingObjects(fromType: ProjectObject.self, property: "items")

}

class Item {
    var id: String
    var projectId: String
    var title: String?
    var desc: String?
    var calculatedTotal: Float = 0.0
    var createdDate: Date?
    var lastEditDate: Date?
    
    init(item: Item) {
        id = item.id
        projectId = item.projectId
        title = item.title
        desc = item.desc
        calculatedTotal = item.calculatedTotal
        createdDate = item.createdDate
        lastEditDate = item.lastEditDate
    }
}
