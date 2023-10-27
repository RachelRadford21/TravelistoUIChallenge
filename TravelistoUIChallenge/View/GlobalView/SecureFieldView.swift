//
//  SecureFieldView.swift
//  TravelistoUIChallenge
//
//  Created by Rachel Radford on 10/27/23.
//

import SwiftUI

struct SecureFieldView: View {
    @State var password = ""
    var passwordFieldText = ""
    var body: some View {
        SecureField(passwordFieldText, text: $password)
            .textfieldStyle()
    }
}

#Preview {
    SecureFieldView()
}
