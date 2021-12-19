//
//  ContentView.swift
//  Ledger_iOS
//
//  Created by Abdulrahman Eldarrat on 12/9/21.
//

import SwiftUI

struct MenuItem : Identifiable{
    var id: String
    var name: String
}

var books = MenuItem(id: "1", name: "Books")
var records = MenuItem(id: "2", name: "Records")
var history = MenuItem(id: "3", name: "History")
var settings = MenuItem(id: "4", name: "Settings")

var menuItems: [MenuItem] = [books, records, history, settings]

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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
