//
//  ContentView.swift
//  TravelistoUIChallenge
//
//  Created by Rachel Radford on 10/20/23.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.environmentBackground) var backgroundColor
    @State private var  isActive = false
   
    var body: some View {
        ZStack {
            Color.backgroundColor.ignoresSafeArea()
            NavigationStack {
                
                if !isActive {
                    SplashView()
                        
                }else {
                    TutorialView()
                       
                    
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }.navigationBarBackButtonHidden(true)
        }
    }
}

//#Preview {
//    ContentView()
//       
//}
