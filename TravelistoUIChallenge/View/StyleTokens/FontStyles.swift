//
//  FontStyles.swift
//  TravelistoUIChallenge
//
//  Created by Rachel Radford on 10/21/23.
//

import SwiftUI

struct FontStyles: View {
    var textSize: CGFloat = 15
    var body: some View {
        Text("Header")
            .headerStyle()
        Text("Rounded Button Text")
            .roundedButtonText()
        
        Text("Square 15 Text")
            .customDemiBoldText(textSize: 15)
          
        
        Text("Square 13 Text")
            .customDemiBoldText(textSize: 13)
        
        Text("Custom Text")
            .customText(textSize: textSize)
    }
}

struct HeaderStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundStyle(Color.textColor)
            .font(.custom("AvenirNext-Bold", size: 28))
    }
}

struct RoundedButtonTextStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundStyle(Color.textColor)
            .font(.custom("AvenirNext-Regular", size: 17))
    }
}

struct customDemiBoldTextStyle: ViewModifier {
    var textSize: CGFloat = 28
    func body(content: Content) -> some View {
        content
            .foregroundStyle(Color.textColor)
            .font(.custom("AvenirNext-SemiBold", size: textSize))
    }
}


struct CustomTextStyle: ViewModifier {
    var textSize: CGFloat = 15
    func body(content: Content) -> some View {
        content
            .foregroundStyle(Color.textColor)
            .font(.custom("AvenirNext-Regular", size: textSize))
    }
}
extension View {
    public func headerStyle() -> some View {
        modifier(HeaderStyle())
    }
    
    public func roundedButtonText() -> some View {
        modifier(RoundedButtonTextStyle())
    }
    
    public func customDemiBoldText(textSize: CGFloat) -> some View {
        modifier(customDemiBoldTextStyle(textSize: textSize))
    }
    
  
    public func customText(textSize: CGFloat) -> some View {
       
        modifier(CustomTextStyle(textSize: textSize))
    }
}

#Preview {
    FontStyles()
}
