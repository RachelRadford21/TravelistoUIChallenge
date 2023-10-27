//
//  ImageCarouselView.swift
//  TravelistoUIChallenge
//
//  Created by Rachel Radford on 10/27/23.
//

import SwiftUI

struct ImageCarouselView: View {
    var scrollImage = [ImageModel(imageName: "tutorialPhoto"), ImageModel(imageName: "jackie-tsang-beach-unsplash"), ImageModel(imageName: "mauro-lima-blueBuilding-unsplash"), ImageModel(imageName: "arseny-togulev-city-unsplash")]
    var body: some View {
       
            ForEach(scrollImage, id: \.id) { image in
                Image(image.imageName)
                    .resizable()
                    .frame(width: 280, height: 280)
                    .clipShape(Circle())
                    .overlay {
                        LogoView()
                            .position(x: 140, y: -20)
                        
                    }
                    .padding(.bottom, 40)
                
            }
       
    }
}

#Preview {
    ImageCarouselView()
}
