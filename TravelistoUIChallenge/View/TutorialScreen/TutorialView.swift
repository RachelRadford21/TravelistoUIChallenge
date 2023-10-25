//
//  TutorialView.swift
//  TravelistoUIChallenge
//
//  Created by Rachel Radford on 10/21/23.
//

import SwiftUI

struct TutorialView: View {
    @Environment(\.environmentBackground) var backgroundColor
   // @EnvironmentObject var vr: ViewRouter

    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            VStack(spacing: 20) {
               Image("tutorialPhoto")
                    .resizable()
                    .frame(width: 280, height: 280)
                    .overlay {
                        LogoView()
                            .position(x: 140, y: -20)
                            
                    }.padding(.bottom, 40)
                Text("Plan your travel anytime, anywhere.")
                    .customText(textSize: 15)
                    .padding(.bottom, 10)
                
                Image("pageScrollIndicator")
                    .resizable()
                    .frame(width: 53, height: 8, alignment: .center)
                
                Button(action: {
                    
                }, label: {
                    Text("Create an account")
                        .roundedButtonStyle()
                        
                })
                
                Text("Already on Travel? Log In")
                    .customText(textSize: 13)
                    .onTapGesture {
                        //
                    }
                
            
                    
            }
        }
        
    }
}

#Preview {
    TutorialView()
}
