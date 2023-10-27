//
//  HeroView.swift
//  TravelistoUIChallenge
//
//  Created by Rachel Radford on 10/21/23.
//

import SwiftUI
import UIKit

struct HeroView: View {
    
    init() {
    
        UIPageControl.appearance().currentPageIndicatorTintColor = .accentUIColor
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.gray.withAlphaComponent(0.6)
    }
    var body: some View {
        VStack {
            TabView {
                ImageCarouselView()

            }.padding(.bottom, 10)
            .tabViewStyle(.page(indexDisplayMode: .always))
           
           
            CaptionTextView(title: "Plan your travel anytime, anywhere.", textSize: 15)
                    .offset(x: 0, y: -110)

        }
        .padding(.bottom, 100)
    }
}

#Preview {
    HeroView()
}
