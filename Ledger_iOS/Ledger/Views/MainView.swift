//
//  MainView.swift
//  Ledger_iOS
//
//  Created by Abdulrahman Eldarrat on 12/9/21.
//
///The base view which represents the first screen the user is taken to in the app

import SwiftUI
import RealmSwift

struct MenuItem : Identifiable{
    var id: String
    var name: String
}

var projects = MenuItem(id: "1", name: "Projects")
var items = MenuItem(id: "2", name: "Items")
var entries = MenuItem(id: "3", name: "Entries")
var settings = MenuItem(id: "4", name: "Settings")

var menuItems: [MenuItem] = [projects, items, entries, settings]

struct MainView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Home Page")
                NavigationLink(destination: ProjectsView()) {
                    Text("My projects")
                }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
