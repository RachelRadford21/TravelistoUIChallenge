//
//  ProfileView.swift
//  TravelistoUIChallenge
//
//  Created by Rachel Radford on 10/26/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
        VStack {
            NavigationLink {
                ProfileView()
            } label: {
                Text("Profile View")
                    .foregroundStyle(Color.white)
            }
            .navigationBarBackButtonHidden(true)
                .toolbar() {
                    ToolbarItem(placement: .topBarLeading) {
                        NavigationLink {
                           SignInView()
    
                        } label: {
                            Image("BackArrow")
                            
                       }
                    
                           
                    }
                }
       }
       
        }
    }
}

#Preview {
    ProfileView()
}
