//
//  ViewCreate.swift
//  TodoApp
//
//  Created by Robert Romero Medina on 22/1/23.
//

import SwiftUI

struct ViewCreate: View {
    @Binding var name: String
    @Binding var description: String
    
    var body: some View {
        VStack(alignment: .center) {
            Text("Create task")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.blue)
            VStack(alignment: .leading) {
                Label("Name task", systemImage: "")
                TextField("Name", text: $name)
                    .disableAutocorrection(false)
                    .foregroundColor(.gray)
                    .padding(15)
                    .padding(.horizontal, -8)
                    .font(.body)
                    .cornerRadius(6)
                    .padding(.horizontal, 10)
                    .border(.black.opacity(0.1), width: 0.5)
                    .onChange(of: name, perform: {value in
                        name = value
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
                        .frame(height: 100)
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
        Spacer()

    }
}

struct ViewCreate_Previews: PreviewProvider {
    static var previews: some View {
        ViewCreate(name: .constant("name klk probando"), description: .constant("test description tu sabe"))
    }
}
