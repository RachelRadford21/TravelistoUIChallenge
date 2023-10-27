//
//  TextFieldStyles.swift
//  TravelistoUIChallenge
//
//  Created by Rachel Radford on 10/27/23.
//

import SwiftUI

struct TextFieldStyles: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TextFieldStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 335, height: 56)
            .padding(.leading)
            .foregroundStyle(Color.textFieldTextColor)
            .background(Color.backgroundColor.opacity(0.6))
            .cornerRadius(8)
            .customText(textSize: 17)
    }
}

extension View {
    public func textfieldStyle() -> some View {
        modifier(TextFieldStyle())
    }
}
#Preview {
    TextFieldStyles()
}
