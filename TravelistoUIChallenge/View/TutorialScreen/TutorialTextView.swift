//
//  TutorialTextView.swift
//  TravelistoUIChallenge
//
//  Created by Rachel Radford on 10/21/23.
//

import SwiftUI

struct TutorialTextView: View {
    var title = ""
    var textSize: CGFloat = 0
    var body: some View {
        Text(title)
            .customText(textSize: textSize)
            .padding(.bottom, 10)

    }
}

#Preview {
    TutorialTextView()
}
