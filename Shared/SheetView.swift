//
//  SheetView.swift
//  SheetView
//
//  Created by Arjun Komath on 19/8/21.
//

import SwiftUI

struct SheetView: View {
    @Environment(\.presentationMode) private var presentationMode
    
    var body: some View {
        Button("Press to dismiss") {
            self.presentationMode.wrappedValue.dismiss()
        }
        .font(.title)
        .padding()
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}
