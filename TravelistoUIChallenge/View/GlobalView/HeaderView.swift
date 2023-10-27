//
//  HeaderView.swift
//  TravelistoUIChallenge
//
//  Created by Rachel Radford on 10/27/23.
//

import SwiftUI

struct HeaderView: View {
    var headerTitle = ""
    var body: some View {
        VStack {
            Text(headerTitle)
                .headerStyle()
                .padding(.trailing, 255)
        }.padding(.bottom, 20)
    }
}

#Preview {
    HeaderView()
}
