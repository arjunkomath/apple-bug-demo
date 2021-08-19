//
//  DetailView.swift
//  DetailView
//
//  Created by Arjun Komath on 19/8/21.
//

import SwiftUI

struct DetailView: View {
    @State private var showingSheet = false
    
    var body: some View {
        List {
            Text("Hello, again!")
        }
        .sheet(isPresented: $showingSheet) {
            SheetView()
        }
        .navigationTitle("Detail")
        .toolbar {
            ToolbarItemGroup(placement: .bottomBar) {
                Button("Third") {
                    print("Pressed")
                }
                
                Spacer()
                
                Button(action: {
                    showingSheet.toggle()
                }, label: {
                    Label("Show", systemImage: "gear")
                })
            }
        }
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
