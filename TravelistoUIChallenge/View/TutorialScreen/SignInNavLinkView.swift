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
        // My nav links stopped working. I wouldnt normally (ever!!) make so many @state vars but it was my work around for funky nav links
        VStack {
            CaptionTextView(title: "Already on Travelisto? Log In" , textSize: 13)
                .onTapGesture {
                    isPresented.toggle()
                }.sheet(isPresented: $isPresented) {
                    NavigationStack {
                        SignInView()
                    }.navigationBarBackButtonHidden(true)
                    
                }
        }.padding(.top, -110)
    }
}

#Preview {
    SignInNavLinkView()
}
