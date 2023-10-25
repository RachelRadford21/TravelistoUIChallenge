//
//  TutorialView.swift
//  TravelistoUIChallenge
//
//  Created by Rachel Radford on 10/21/23.
//

import SwiftUI

struct TutorialView: View {
    @Environment(\.environmentBackground) var backgroundColor
   
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
           // NavigationStack {
                VStack(spacing: 20) {
                    HeroView()
                    
                    TutorialTextView(title: "Plan your travel anytime, anywhere.", textSize: 15)
                    
                    
                    Image("pageScrollIndicator")
                        .resizable()
                        .frame(width: 53, height: 8, alignment: .center)
                    
                   NavigationLink {
                      
                       CreateAccountView()
                    } label: {
                        Text("Create an account")
                            .roundedButtonStyle()
                         
                        
                    }
                  
                    NavigationLink {
                        
                        SignInView()
                    } label: {
                        TutorialTextView(title: "Already on Travelisto? Log In" , textSize: 13)
                            
                    }
                        

                }
                .navigationDestination(for: Screens.self) { screen in
                   CreateAccountView()
                }
                .navigationBarBackButtonHidden(true)
                
       
      //      }
        }
        
    }
}

#Preview {
    TutorialView()
        //.environmentObject(ViewRouter())
}
