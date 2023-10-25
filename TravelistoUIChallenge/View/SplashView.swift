//
//  SplashView.swift
//  TravelistoUIChallenge
//
//  Created by Rachel Radford on 10/21/23.
//

import SwiftUI

struct SplashView: View {
    @Environment(\.environmentBackground) var backgroundColor
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            VStack {
                LogoView()
                    
            }
        }
    }
}

#Preview {
    SplashView()
    
}
