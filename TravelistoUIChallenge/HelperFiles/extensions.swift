//
//  extensions.swift
//  TravelistoUIChallenge
//
//  Created by Rachel Radford on 10/20/23.
//

import Foundation
import SwiftUI

extension Color {
    // I prefer to use an extension for colors so I can easily identify colors
    static let accentStyleColor = Color(#colorLiteral(red: 0.9921568627, green: 0.3411764706, blue: 0.2235294118, alpha: 1))
    // This is also the background for the room select textbox
    static let textColor = Color(#colorLiteral(red: 0.9294117647, green: 0.9294117647, blue: 0.9294117647, alpha: 1))
    // This also the background for some textboxes -> Flight options 1 & 2, Name on card, searching, review, subtle button, & email
    static let backgroundColor = Color(#colorLiteral(red: 0.09019607843, green: 0.09019607843, blue: 0.09019607843, alpha: 1))

}

extension TutorialView {
    // Made this enum so i could use on navigationDestination for two separate views inside NavigationStack
    enum Screens {
        case page1, page2, page3
    }
}
