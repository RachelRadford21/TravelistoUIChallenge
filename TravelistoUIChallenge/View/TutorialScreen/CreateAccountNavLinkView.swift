//
//  CreateAccountNavLinkView.swift
//  TravelistoUIChallenge
//
//  Created by Rachel Radford on 10/26/23.
//

import SwiftUI

struct CreateAccountNavLinkView: View {
    @State var isPresented = false
    var body: some View {
        
        Text("Create an account")
            .roundedButtonStyle()
            .padding(.top, -175)
            .onTapGesture {
                isPresented.toggle()
            }.sheet(isPresented: $isPresented) {
                NavigationStack {
                    CreateAccountView()
                }
                .navigateStyle(view: TutorialView())
            }
    }
}

#Preview {
    CreateAccountNavLinkView()
}
