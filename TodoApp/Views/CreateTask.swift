//
//  CreateTask.swift
//  TodoApp
//
//  Created by Robert Romero Medina on 22/1/23.
//

import SwiftUI

struct CreateTask: View {
    
    @State var username: String = ""
    @State var description: String = ""
    
    
    var body: some View {
        ZStack {
            ScrollView {
                NavigationView {
                    VStack(alignment: .center) {
                        VStack(alignment: .leading) {
                            Label("Name task", systemImage: "")
                            TextField("Name", text: $username)
                                .disableAutocorrection(false)
                                .foregroundColor(.gray)
                                .padding(15)
                                .padding(.horizontal, -8)
                                .font(.body)
                                .cornerRadius(6)
                                .padding(.horizontal, 10)
                                .border(.black.opacity(0.1), width: 0.5)
                                .onChange(of: username, perform: {value in
                                    username = value
                            })
                        }.padding(.bottom, 10)
                        VStack(alignment: .leading) {
                            Label("Description", systemImage: "")
                                TextEditor(text: $description)
                                    .foregroundColor(.gray)
                                    .padding(.horizontal, 10)
                                    .padding(10)
                                    .border(.black.opacity(0.1), width: 0.5)
                                    .cornerRadius(2)
                                    .onChange(of: description, perform: {value in
                                        description = value
                                })
                        }.padding(.bottom, 10)
                        VStack(alignment: .center) {
                            Button(action: {}) {
                                Image(systemName: "plus")
                                    .font(.title3.bold())
                                Text("Create task")
                                    .font(.title3.bold())
                            }
                            .padding(10)
                            .padding(.horizontal, 20)
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                            
                        }
           
                    }
                    .padding(20)
                }

            }
            .navigationTitle("Create Task")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

struct CreateTask_Previews: PreviewProvider {
    static var previews: some View {
        CreateTask()
    }
}


struct InputCompoent: View {
    var body: some View {
        Text("Probando a ver klk si es verdad esto tu sabe")
    }
}

