//
//  ButtonStyles.swift
//  TravelistoUIChallenge
//
//  Created by Rachel Radford on 10/21/23.
//

import SwiftUI

struct ButtonStyles: View {
    var textSize: CGFloat
    var width: CGFloat = 0
    var height: CGFloat = 0
    var body: some View {
        Button(action: {
            
        }, label: {
            Text("Create an account")
                
        })

        Button(action: {
            
        }, label: {
            // This should be either 15 or 13
            // The button size changes from 157x37, 110x40, 121x37, 144x44, 55x44, 31x22
            Text("Return")
                .font(.custom("SF Pro Text", size: 15))
                .frame(width: 157, height: 37)
                .foregroundStyle(Color.textColor)
                .background(RoundedRectangle(cornerRadius: 8).fill(Color.accentStyleColor))
        })
    }
}

struct RoundedButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .roundedButtonText()
            .frame(width: 335, height: 56)
            .background(Color.accentStyleColor)
            .cornerRadius(100)
        
    }
}

extension View {
    public func roundedButtonStyle() -> some View {
        modifier(RoundedButtonStyle())
    }
}







#Preview {
    ButtonStyles(textSize: 15)
}
