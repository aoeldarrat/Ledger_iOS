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
    
    private var projectResults: Results<ProjectObject>
    private var itemResults: Results<ItemObject>
    private var entryResults: Results<EntryObject>
    
    
    init(realm: Realm) {
        projectResults = realm.objects(ProjectObject.self)
        itemResults = realm.objects(ItemObject.self)
        entryResults = realm.objects(EntryObject.self)
    }
    
    var projects: [ProjectObject] {
        projectResults.map(ProjectObject.init)
    }
    
    var items: [ItemObject] {
        itemResults.map(ItemObject.init)
    }
    
    var entries: [EntryObject] {
        entryResults.map(EntryObject.init)
    }
}

//MARK: CRUD Actions
extension BaseService {
    
    ///Add/Create
    func createProject(project: ProjectObject) {
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
    
    func createItem(item: ItemObject) {
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
    
    func createEntry(entry: EntryObject) {
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
    func getProjects() -> Results<ProjectObject>  {
        do {
            let realm = try Realm()
            
            let readProjects = realm.objects(ProjectObject.self)
            projectResults = readProjects
            return readProjects
        } catch let error {
            print("error in base service: read project: \(error)")
        }
        return projectResults
    }
    
    func getItems() -> Results<ItemObject> {
        do {
            let realm = try Realm()
            let readItems = realm.objects(ItemObject.self)
            itemResults = readItems
            return readItems
        } catch let error {
            print("error in base service: read item: \(error)")
        }
        return itemResults
    }
    
    func getEntry() -> Results<EntryObject> {
        
        do {
            let realm = try Realm()
            let readEntries = realm.objects(EntryObject.self)
            entryResults = readEntries
            return readEntries
        } catch let error {
            print("error in base service: create entry: \(error)")
        }
        
        return entryResults
    }
    
    /// Update
    func updateProject(newProject: ProjectObject) {
        objectWillChange.send()
        
        do {
            let realm = try Realm()
            realm.create(
                ProjectObject.self,
                value: newProject,
                update: .modified
            )
        } catch let error {
            print("error in base service: update project: \(error)")
        }
    }
    
    func updateItem(newItem: ItemObject) {
        objectWillChange.send()
        
        do {
            let realm = try Realm()
            realm.create(
                ItemObject.self,
                value: newItem,
                update: .modified
            )
        } catch let error {
            print("error in base service: update item: \(error)")
        }
    }
    
    func updateEntry(newEntry: EntryObject) {
        objectWillChange.send()
        
        do {
            let realm = try Realm()
            realm.create(
                EntryObject.self,
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
