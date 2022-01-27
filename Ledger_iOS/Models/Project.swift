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
    @Persisted var items: List<Item>
    @Persisted var createdDate: Date?
    @Persisted var lastEditDate: Date?
    
    override static func primaryKey() -> String? {
      "id"
    }
}

class Project {
    var id: String
    var title: String = ""
    var stringDescription: String = ""
    var items: List<Item>?
    var createdDate: Date?
    var lastEditDate: Date?
    
    init(project: Project) {
        id = project.id
        title = project.title
        stringDescription = project.stringDescription
        items = project.items
        createdDate = project.createdDate
        lastEditDate = project.lastEditDate
    }
}
