//
//  HeroView.swift
//  TravelistoUIChallenge
//
//  Created by Rachel Radford on 10/21/23.
//

import SwiftUI

struct HeroView: View {
    var body: some View {
        Image("tutorialPhoto")
             .resizable()
             .frame(width: 280, height: 280)
             .overlay {
                 LogoView()
                     .position(x: 140, y: -20)
                     
             }.padding(.bottom, 40)
    }
}

#Preview {
    HeroView()
}
