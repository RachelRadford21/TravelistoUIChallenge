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
            .square15Text()
          
        
        Text("Square 13 Text")
            .square13Text()
        
        Text("Custom Text")
            .customText(textSize: textSize)
    }
}

struct HeaderStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundStyle(Color.textColor)
            .font(.custom("AvenirNext-SemiBold", size: 17))
    }
}

struct RoundedButtonTextStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundStyle(Color.textColor)
            .font(.custom("AvenirNext-Regular", size: 17))
    }
}

struct Square15TextStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundStyle(Color.textColor)
            .font(.custom("AvenirNext-SemiBold", size: 15))
    }
}

struct Square13TextStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundStyle(Color.textColor)
            .font(.custom("AvenirNext-SemiBold", size: 13))
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
    
    public func square15Text() -> some View {
        modifier(Square15TextStyle())
    }
    
    public func square13Text() -> some View {
        modifier(Square13TextStyle())
    }
    
    public func customText(textSize: CGFloat) -> some View {
       
        modifier(CustomTextStyle(textSize: textSize))
    }
}

#Preview {
    FontStyles()
}
