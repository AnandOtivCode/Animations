//
//  ContentView.swift
//  Animations
//
//  Created by Anand Otiv on 2025-04-12.
//

import SwiftUI



struct ContentView: View {
    
    let letters = Array("Hello SwiftUI")
        @State private var enabled = false
        @State private var dragAmount = CGSize.zero
    
    
    
    var body: some View {
           HStack(spacing: 0) {
               ForEach(0..<letters.count, id: \.self) { num in
                   Text(String(letters[num]))
                       .padding(5)
                       .font(.title)
                       .background(enabled ? .blue : .red)
                       .offset(dragAmount)
                       .animation(.linear.delay(Double(num) / 20), value: dragAmount)
               }
           }
           .gesture(
               DragGesture()
                   .onChanged { dragAmount = $0.translation }
                   .onEnded { _ in
                       dragAmount = .zero
                       enabled.toggle()
                   }
           )
       }

//    var body: some View {
//        
//        
//        
////        LinearGradient(colors: [.yellow, .red], startPoint: .topLeading, endPoint: .bottomTrailing)
////            .frame(width: 300, height: 200)
////            .clipShape(.rect(cornerRadius: 10))
////            .offset(dragAmount)
////            .gesture(
////                DragGesture()
////                    .onChanged { dragAmount = $0.translation }
////                    .onEnded { _ in
////                        withAnimation(.bouncy) {
////                            dragAmount = .zero
////                        }
////                    }
////            )
////            //.animation(.bouncy, value: dragAmount)
//
//
//    }
//
//    
//    
//    
////    @State private var enabled = false
////    var body: some View {
////        
////        
////        Button("Tap Me") {
////            enabled.toggle()
////
////        }
////        .frame(width: 200, height: 200)
////        .background(enabled ? .blue : .red)
////        .animation(nil, value: enabled)
////        .clipShape(.rect(cornerRadius: enabled ? 60 : 0))
////        //.animation(.default, value: enabled)
////        //.background(.blue)
////        .foregroundStyle(.white)
////        .clipShape(.rect(cornerRadius: enabled ? 60 : 0))
////        .animation(.default, value: enabled)
////
////
////
////        
////        
////        
////        //        Button("Tap Me") {
//////            // do nothing
//////        }
//////        .background(.blue)
//////        .frame(width: 200, height: 200)
//////        .foregroundStyle(.white)
////        
////        
////        
////        
////        
////        
////        
////        
////        
////        
////    }

    
    
    
    //    @State private var animationAmount = 0.0
//
//    
//    var body: some View {
//        Button("Tap Me") {
//            withAnimation (.spring(duration: 1, bounce: 0.5)){
//                animationAmount += 360
//            }
//        }
//        .padding(50)
//        .background(.red)
//        .foregroundStyle(.white)
//        .clipShape(.circle)
//        .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
//
//    }

//    @State private var animationAmount = 1.0
//    
//    var body: some View {
//        print(animationAmount)
//
//        return VStack {
//            Stepper("Scale amount", value: $animationAmount.animation(
//                .easeInOut(duration: 1)
//                    .repeatCount(3, autoreverses: true)
//            ), in: 1...10)
//            Spacer()
//            
//            Button("Tap Me") {
//                animationAmount += 1
//            }
//            .padding(40)
//            .background(.red)
//            .foregroundStyle(.white)
//            .clipShape(.circle)
//            .scaleEffect(animationAmount)
//        }
//    }
//    
    
    
    
    
    
    
    //        Button("Tap Me") {
    //           // animationAmount += 1
    //
    //        }
    //        .padding(50)
    //        .background(.red)
    //        .foregroundStyle(.white)
    //        .clipShape(.circle)
    //        //.scaleEffect(animationAmount)
    //       // .blur(radius: (animationAmount - 1) * 3)
    //        .overlay(
    //            Circle()
    //                .stroke(.red)
    //                .scaleEffect(animationAmount)
    //                .opacity(2 - animationAmount)
    //                .animation(.easeOut(duration: 1)       //.repeatCount(3, autoreverses: true),
    //                    .repeatForever(autoreverses: false),
    //
    //                //.delay(1),
    //         value: animationAmount)
    //        ).onAppear {
    //            animationAmount = 2
    //        }
    //
    //        //.animation(.default, value: animationAmount)
    //        //.animation(.linear,value: animationAmount)
    ////        .animation(.spring(duration: 1, bounce: 0.9), value: animationAmount)
    ////        .animation(.easeInOut(duration: 1)       //.repeatCount(3, autoreverses: true),
    ////            .repeatForever(autoreverses: true),
    ////
    ////        //.delay(1),
    //// value: animationAmount)
    //
    //
    //
    //
    //
    //
    //
    //    }
    
    
}

#Preview {
    ContentView()
}

struct Previews_ContentView_LibraryContent: LibraryContentProvider {
    var views: [LibraryItem] {
        LibraryItem(/*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/)
    }
}
