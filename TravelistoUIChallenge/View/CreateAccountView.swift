//
//  CreateAccountView.swift
//  TravelistoUIChallenge
//
//  Created by Rachel Radford on 10/21/23.
//

import SwiftUI

struct CreateAccountView: View {

    var body: some View {
        VStack {
            Text("Create account view")
        }
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

#Preview {
    CreateAccountView()
       
}
