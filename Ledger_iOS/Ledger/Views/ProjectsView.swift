//
//  ProjectView.swift
//  Ledger_iOS
//
//  Created by Abdulrahman Eldarrat on 2/3/22.
//

import SwiftUI
import Foundation
import RealmSwift

var testProject = Project(id: "0", title: "Test project 3", stringDescription: "description", items: Array(), createdDate: Date(), lastEditDate: Date())

struct ProjectsView: View {
    
    let projects: [Project] = [
        Project(id: "0", title: "Test project 1", stringDescription: "description", items: Array(), createdDate: Date(), lastEditDate: Date()),
        Project(id: "0", title: "Test project 2", stringDescription: "description", items: Array(), createdDate: Date(), lastEditDate: Date()),
        Project(id: "0", title: "Test project 3", stringDescription: "description", items: Array(), createdDate: Date(), lastEditDate: Date())]
    
    //State for displaying create project modal
    @State private var createProjectSheetShowing = false
    
    var body: some View {

        
        NavigationView {
            
            ScrollView {
                Button("Add Project") {
                    createProjectSheetShowing.toggle()
                }
                .sheet(isPresented: $createProjectSheetShowing) {
                    CreateProjectSheetView()
                }
                .font(.title)
                .cornerRadius(3.0)
                .padding()
                .background(Color.gray)
                
                VStack {
                    List(projects) { project in
                        ProjectCellView(project: project)
                    }
                }
            }
            .navigationTitle("Projects")
        }
    }
}

struct ProjectsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ProjectsView()
        }
    }
}

struct ProjectCellView: View {
    @State var project: Project
    var body: some View {
        VStack {
            Text(project.title)
                .padding(.horizontal, 20)
            Text(project.stringDescription)
                .padding(.trailing, 20)
                
        }
    }
}

struct ProjectViewProps {
    let title: String?
    let description: String?
    let items: [Project]?
    let createdDate: Date?
    let lastEditedDate: Date?
}

struct CreateProjectSheetView: View {
    @Environment(\.dismiss) var dismiss
    @Environment(\.realm) var realm
    
    @State var projectName = ""
    @State var projectDescription = ""
    
    //TODO:Basic view without much styling -> How do we want to design this Elisha?
    var body: some View {
        Button("Close") {
            dismiss()
        }
        .font(.title)
        .padding()
        
        TextField("Project Name", text: $projectName)
        TextField("Project Description", text: $projectDescription)
        
        Button("Submit") {
            dismiss()
        }
        .font(.title)
        .padding()

    }
    
    //TODO:
    func createProject() {
        //TODO: Create new project using info put in by user
        //TODO: Turn project into projectObject
        //TODO: Save project in Realm
        //TODO: Pull down new project and update list of projects
        let baseService = environmentObject(BaseService(realm: realm)) as! BaseService
        baseService.createProject(project: ProjectObject())
    }
}
