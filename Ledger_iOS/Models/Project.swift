//
//  Book.swift
//  Ledger_iOS
//
//  Created by Elisha Chirchir on 20/12/2021.
//

import RealmSwift

class Project: Object, ObjectKeyIdentifiable {
    @objc dynamic var id: String
    @objc dynamic var title: String = ""
    @objc dynamic var stringDescription: String = ""
    @objc dynamic var items: Array<Item>?
    @objc dynamic var createdDate: Date?
    @objc dynamic var lastEditDate: Date?
    
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
