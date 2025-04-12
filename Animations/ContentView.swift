//
//  ContentView.swift
//  Animations
//
//  Created by Anand Otiv on 2025-04-12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button("Tap Me") {
            // do nothing
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
   
    }
}

#Preview {
    ContentView()
}
