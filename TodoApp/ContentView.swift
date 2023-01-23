//
//  ContentView.swift
//  TodoApp
//
//  Created by Robert Romero Medina on 22/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MainView()
                .tabItem{
                    Image(systemName: "house.fill")
                        Text("Home")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
