//
//  SignInView.swift
//  TravelistoUIChallenge
//
//  Created by Rachel Radford on 10/21/23.
//

import SwiftUI

struct SignInView: View {
  
    var body: some View {
        VStack {
            Text("Sign In View")
        }
            
            .navigationBarBackButtonHidden(true)
            .toolbar() {
                
                ToolbarItem(placement: .topBarLeading) {
                    
                    
                    NavigationLink {
                        TutorialView()
                    } label: {
                        Image("BackArrow")
                    }.navigationBarBackButtonHidden(true)
                    
                }
            }
    }
}

//#Preview {
//    SignInView()
//        .environmentObject(ViewRouter())
//}
