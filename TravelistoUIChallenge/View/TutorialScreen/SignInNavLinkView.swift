//
//  SignInNavLinkView.swift
//  TravelistoUIChallenge
//
//  Created by Rachel Radford on 10/26/23.
//

import SwiftUI

struct SignInNavLinkView: View {
    @State var isPresented = false
    var body: some View {
        
        CaptionTextView(title: "Already on Travelisto? Log In" , textSize: 13)
            .onTapGesture {
                isPresented.toggle()
            }.sheet(isPresented: $isPresented) {
                NavigationStack {
                    SignInView()
                }.navigationBarBackButtonHidden(true)
                    
            }
    }
}

#Preview {
    SignInNavLinkView()
}
