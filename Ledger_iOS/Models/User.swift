//
//  User.swift
//  Ledger_iOS
//
//  Created by Elisha Chirchir on 13/11/2021.
//

import Foundation
import RealmSwift

class User: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var preferredLanguage: String?
    @Persisted var preferredCurrency: String?
    @Persisted var books: [Book]?
}
