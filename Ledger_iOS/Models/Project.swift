//
//  Book.swift
//  Ledger_iOS
//
//  Created by Elisha Chirchir on 20/12/2021.
//

import RealmSwift

/// REALM Representation for project
class ProjectObject: Object, ObjectKeyIdentifiable {
    
    @Persisted(primaryKey: true) var id: String
    @Persisted var title: String = ""
    @Persisted var stringDescription: String = ""
    @Persisted var createdDate: Date?
    @Persisted var lastEditDate: Date?
    
    // one-to-many relationship with the Item object
    let items =  List<ItemObject>()
    
    override static func primaryKey() -> String? {
      "id"
    }
}

class Project {
    var id: String
    var title: String = ""
    var stringDescription: String = ""
    var items: Array<Item>?
    var createdDate: Date?
    var lastEditDate: Date?
    
    init(id: String, title: String, stringDescription: String, items: Array<Item>, createdDate: Date, lastEditDate: Date) {
        self.id = id
        self.title = title
        self.stringDescription = stringDescription
        self.items = items
        self.createdDate = createdDate
        self.lastEditDate = lastEditDate
    }
}
