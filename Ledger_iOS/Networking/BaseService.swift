//
//  BaseService.swift
//  Ledger_iOS
//
//  Created by Elisha Chirchir on 20/12/2021.
//

import RealmSwift

class BaseService: ObservableObject {
//    static let realm = try! Realm(configuration: .init(schemaVersion: 0, deleteRealmIfMigrationNeeded: true))
    
    static let projectIdentifier = "project"
    static let itemIdentifier = "item"
    static let entryIdentifier = "entry"
    
    private var projectResults: Results<Project>
    private var itemResults: Results<Item>
    private var entryResults: Results<Entry>
    
    
    init(realm: Realm) {
        projectResults = realm.objects(Project.self)
        itemResults = realm.objects(Item.self)
        entryResults = realm.objects(Entry.self)
    }
    
    var projects: [Project] {
        projectResults.map(Project.init)
    }
    
    var items: [Item] {
        itemResults.map(Item.init)
    }
    
    var entries: [Entry] {
        entryResults.map(Entry.init)
    }
}

//MARK: CRUD Actions
extension BaseService {
    
    ///Add/Create
    func createProject(project: Project) {
        objectWillChange.send()
        do {
            let realm = try Realm()
            
            try realm.write{
                realm.add(project)
            }
        } catch let error {
            print("error in base service: create project: \(error)")
        }
    }
    
    func createItem(item: Item) {
        objectWillChange.send()
        
        do {
            let realm = try Realm()
            
            try realm.write{
                realm.add(item)
            }
        } catch let error {
            print("error in base service: create item: \(error)")
        }
    }
    
    func createEntry(entry: Entry) {
        objectWillChange.send()
        
        do {
            let realm = try Realm()
            
            try realm.write{
                realm.add(entry)
            }
        } catch let error {
            print("error in base service: create entry: \(error)")
        }
    }
    
    /// Read
    func getProjects() -> Results<Project>  {
        do {
            let realm = try Realm()
            
            let readProjects = realm.objects(Project.self)
            projectResults = readProjects
            return readProjects
        } catch let error {
            print("error in base service: read project: \(error)")
        }
        return projectResults
    }
    
    func getItems() -> Results<Item> {
        do {
            let realm = try Realm()
            let readItems = realm.objects(Item.self)
            itemResults = readItems
            return readItems
        } catch let error {
            print("error in base service: read item: \(error)")
        }
        return itemResults
    }
    
    func getEntry() -> Results<Entry> {
        
        do {
            let realm = try Realm()
            let readEntries = realm.objects(Entry.self)
            entryResults = readEntries
            return readEntries
        } catch let error {
            print("error in base service: create entry: \(error)")
        }
        
        return entryResults
    }
    
    /// Update
    func updateProject(newProject: Project) {
        objectWillChange.send()
        
        do {
            let realm = try Realm()
            realm.create(
                Project.self,
                value: newProject,
                update: .modified
            )
        } catch let error {
            print("error in base service: update project: \(error)")
        }
    }
    
    func updateItem(newItem: Item) {
        objectWillChange.send()
        
        do {
            let realm = try Realm()
            realm.create(
                Item.self,
                value: newItem,
                update: .modified
            )
        } catch let error {
            print("error in base service: update item: \(error)")
        }
    }
    
    func updateEntry(newEntry: Entry) {
        objectWillChange.send()
        
        do {
            let realm = try Realm()
            realm.create(
                Entry.self,
                value: newEntry,
                update: .modified
            )
        } catch let error {
            print("error in base service: update entry: \(error)")
        }
    }
    
    /// Delete
    func deleteProject(id: String) {
        objectWillChange.send()
        
        guard let project = projectResults.first(
            where: { $0.id == id })
        else { return }
        
        do {
            let realm = try Realm()
            try realm.write{
                realm.delete(project)
            }
        } catch let error {
            print("error in base service: delete project]: \(error)")
        }
    }
    
    func deleteItem(id: String) {
        objectWillChange.send()
        
        guard let item = itemResults.first(
            where: { $0.id == id })
        else { return }
        
        do {
            let realm = try Realm()
            try realm.write{
                realm.delete(item)
            }
        } catch let error {
            print("error in base service: delete item]: \(error)")
        }
    }
    
    func deleteEntry(id: String) {
        objectWillChange.send()
        
        guard let entry = entryResults.first(
            where: { $0.id == id })
        else { return }
        
        do {
            let realm = try Realm()
            try realm.write{
                realm.delete(entry)
            }
        } catch let error {
            print("error in base service: delete entry]: \(error)")
        }
    }
}
