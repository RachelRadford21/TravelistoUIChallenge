//
//  TutorialTextView.swift
//  TravelistoUIChallenge
//
//  Created by Rachel Radford on 10/21/23.
//

import SwiftUI

struct CaptionTextView: View {
    var title = ""
    var textSize: CGFloat = 0
    var body: some View {
        VStack {
            Text(title)
                .customText(textSize: textSize)
        }
    }
}

#Preview {
    CaptionTextView()
}
