//
//  TutorialView.swift
//  TravelistoUIChallenge
//
//  Created by Rachel Radford on 10/21/23.
//

import SwiftUI

struct TutorialView: View {
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                HeroView()
                CreateAccountNavLinkView()
                SignInNavLinkView()

                
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    TutorialView()
    
}
