//
//  BaseService.swift
//  Ledger_iOS
//
//  Created by Elisha Chirchir on 20/12/2021.
//

import Foundation
import RealmSwift

class BaseService {
    static let realm = try! Realm(configuration: .init(schemaVersion: 0, deleteRealmIfMigrationNeeded: true))
}
