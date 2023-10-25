//
//  EnvBackgroundColorStyle.swift
//  TravelistoUIChallenge
//
//  Created by Rachel Radford on 10/21/23.
//

import Foundation
import SwiftUI

private struct EnvBackgroundColorKey: EnvironmentKey {
    // I am unsure why environmentColor alone wasn't enough to make the error go away
   static var defaultValue: Color = .backgroundColor
    
  //  typealias Value = Color
    
    static var environmentColor: Color = .backgroundColor
}

extension EnvironmentValues {
    var environmentBackground: Color {
        get { self[EnvBackgroundColorKey.self] }
        set { self[EnvBackgroundColorKey.self] = newValue }
    }
}

extension View {
    func EnvironmentColor(_ color: Color) -> some View {
        environment(\.environmentBackground, color)
    }
}
