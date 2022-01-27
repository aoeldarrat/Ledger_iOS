//
//  ContentView.swift
//  Ledger_iOS
//
//  Created by Abdulrahman Eldarrat on 12/9/21.
//

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

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            
            List(menuItems) { menu in
                NavigationLink(destination: Text(menu.name)) {
                    Text(menu.name)
                }
            }
            .navigationTitle("Ledger App")
        }
    }
}


struct ProjectMainView: View {
    var body: some View {
        
        List() {
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
