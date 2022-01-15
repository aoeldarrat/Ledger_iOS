//
//  User.swift
//  Ledger_iOS
//
//  Created by Elisha Chirchir on 20/12/2021.
//

import RealmSwift

class User: Object, ObjectKeyIdentifiable {
    
    //Usually in creation order
    @objc dynamic var id: String
    @objc dynamic var projects: Array<Project>
    @objc dynamic var creationDate: Date?
    @objc dynamic var firstName: Date?
    @objc dynamic var lastName: String?
    
    init(user: User) {
        id = user.id
        projects = user.projects
        creationDate = user.creationDate
        firstName = user.firstName
        lastName = user.lastName
    }
}


