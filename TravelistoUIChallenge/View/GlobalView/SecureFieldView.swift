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
//            .frame(width: 335, height: 56)
//            .padding(.leading)
//            .foregroundStyle(Color.textFieldTextColor)
//            .background(Color.backgroundColor.opacity(0.6))
//            .cornerRadius(8)
//            .customText(textSize: 17)
    }
}

#Preview {
    SecureFieldView()
}
