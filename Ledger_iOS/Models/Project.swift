//
//  Book.swift
//  Ledger_iOS
//
//  Created by Elisha Chirchir on 20/12/2021.
//

import RealmSwift

class ProjectObject: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var id: String
    @Persisted var title: String = ""
    @Persisted var stringDescription: String = ""
    @Persisted var items: MutableSet<Item>
    @Persisted var createdDate: Date?
    @Persisted var lastEditDate: Date?
    
    override static func primaryKey() -> String? {
      "id"
    }
}

class Project {
    @Persisted var id: String
    @Persisted var title: String = ""
    @Persisted var stringDescription: String = ""
    @Persisted var items: Array<Item>
    @Persisted var createdDate: Date?
    @Persisted var lastEditDate: Date?
    
    override static func primaryKey() -> String? {
      "id"
    }
    
    init(project: Project) {
        id = project.id
        title = project.title
        stringDescription = project.stringDescription
        items = project.items
        createdDate = project.createdDate
        lastEditDate = project.lastEditDate
    }
}
