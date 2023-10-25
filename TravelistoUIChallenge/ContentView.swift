//
//  ContentView.swift
//  TravelistoUIChallenge
//
//  Created by Rachel Radford on 10/20/23.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.environmentBackground) var backgroundColor
    @StateObject var vr: ViewRouter = ViewRouter()
    @State private var  isActive = false
    var body: some View {
        ZStack {
            Color.backgroundColor.ignoresSafeArea()
          
            if !isActive {
                ChangeView()
            }else {
                TutorialView()
                    .environmentObject(vr)
                  
                   
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

//#Preview {
//    ContentView()
//       
//}
