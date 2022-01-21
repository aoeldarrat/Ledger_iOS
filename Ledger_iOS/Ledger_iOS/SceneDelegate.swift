//
//  SceneDelegate.swift
//  Ledger_iOS
//
//  Created by Abdulrahman Eldarrat on 1/14/22.
//
///This solution has been taken from
///- https://www.raywenderlich.com/12235561-realm-with-swiftui-tutorial-getting-started
///Not sure if working correctly

import UIKit
import SwiftUI
import RealmSwift

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
  var window: UIWindow?

  func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    RealmMigrator.setDefaultConfiguration()
    if let windowScene = scene as? UIWindowScene {
      do {
        let realm = try Realm()
        let window = UIWindow(windowScene: windowScene)
          
        let contentView = ContentView().environmentObject(BaseService(realm: realm))
        window.rootViewController = UIHostingController(rootView: contentView)
        
        self.window = window
        window.makeKeyAndVisible()
      } catch let error {
        // Handle error
        fatalError("Failed to open Realm. Error: \(error.localizedDescription)")
      }
    }
  }
}


enum RealmMigrator {
  static private func migrationBlock(
    migration: Migration,
    oldSchemaVersion: UInt64
  ) {
    if oldSchemaVersion < 1 {
      migration.enumerateObjects(ofType: ProjectObject.className()) { _, newObject in
        newObject?["colorName"] = "rw-green"
      }
    }
  }

  static func setDefaultConfiguration() {
    let config = Realm.Configuration(
      schemaVersion: 1,
      migrationBlock: migrationBlock)
    Realm.Configuration.defaultConfiguration = config
  }
}
