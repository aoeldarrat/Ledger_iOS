//
//  User.swift
//  Ledger_iOS
//
//  Created by Elisha Chirchir on 20/12/2021.
//

import RealmSwift

///Realm Object that represents the User
class UserObject: Object, ObjectKeyIdentifiable {
    
    //Usually in creation order
    @Persisted (primaryKey: true) var id: String
    @Persisted var projects: List<ProjectObject>
    @Persisted var creationDate: Date?
    @Persisted var firstName: String?
    @Persisted var lastName: String?
    
    override class func primaryKey() -> String? {
        "id"
    }
}

class User {
    
    var id: String
    var projects: Array<Project> //Should this be a set?
    var creationDate: Date
    var firstName: String
    var lastName: String
    
    
    init(user: User) {
        id = user.id
        projects = user.projects
        creationDate = user.creationDate
        firstName = user.firstName
        lastName = user.lastName
    }
    
}


