//
//  ContentView.swift
//  Shared
//
//  Created by Arjun Komath on 19/8/21.
//

import SwiftUI

struct ContentView: View {
    @State private var showingSheet = false
    
    var body: some View {
        List {
            NavigationLink(destination: DetailView()) {
                Text("Hello, World!")
            }
        }
        .sheet(isPresented: $showingSheet) {
            SheetView()
        }
        .navigationTitle("SwiftUI")
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarLeading) {
                Button("First") {
                    showingSheet.toggle()
                }
            }
            
            ToolbarItemGroup(placement: .bottomBar) {
                Button("First") {
                    showingSheet.toggle()
                }
                
                Spacer()
                
                Button("Show") {
                    showingSheet.toggle()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
