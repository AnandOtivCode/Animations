//
//  ContentView.swift
//  Animations
//
//  Created by Anand Otiv on 2025-04-12.
//

import SwiftUI



struct ContentView: View {
    @State private var animationAmount = 1.0

    var body: some View {
        Button("Tap Me") {
           // animationAmount += 1

        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        //.scaleEffect(animationAmount)
       // .blur(radius: (animationAmount - 1) * 3)
        .overlay(
            Circle()
                .stroke(.red)
                .scaleEffect(animationAmount)
                .opacity(2 - animationAmount)
                .animation(.easeOut(duration: 1)       //.repeatCount(3, autoreverses: true),
                    .repeatForever(autoreverses: false),

                //.delay(1),
         value: animationAmount)
        ).onAppear {
            animationAmount = 2
        }

        //.animation(.default, value: animationAmount)
        //.animation(.linear,value: animationAmount)
//        .animation(.spring(duration: 1, bounce: 0.9), value: animationAmount)
//        .animation(.easeInOut(duration: 1)       //.repeatCount(3, autoreverses: true),
//            .repeatForever(autoreverses: true),
//
//        //.delay(1),
// value: animationAmount)

        

        



    }
}

#Preview {
    ContentView()
}
