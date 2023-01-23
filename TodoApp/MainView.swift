//
//  MainView.swift
//  TodoApp
//
//  Created by Robert Romero Medina on 22/1/23.
//

import SwiftUI

struct MainView: View {
    @State var openCreate: Bool = false
    @State var name: String = ""
    @State var description: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Text("Hola")
                }
                .listStyle(InsetListStyle())
                VStack {
                    Button(action: {
                        openCreate = true
                    }) {
                        Text("Add task")
                    }
                    .sheet(isPresented: $openCreate, content: {
                        ViewCreate(name: $name, description: $description)
                    })
                }
            }
            .navigationTitle("Home")
            .navigationBarItems(leading:
                HStack {
                    Text("Task name")
                        .foregroundColor(.gray)
                }, trailing:
                HStack {
                    NavigationLink(destination: CreateTask()) {
                        Text("Create task")
                    }.foregroundColor(.blue)
                }
            )
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
