//
//  NavigationStyles.swift
//  TravelistoUIChallenge
//
//  Created by Rachel Radford on 10/26/23.
//

import SwiftUI

struct NavigationStyles: View {
    var view: any View
    var body: some View {
        NavigationStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }.navigateStyle(view: view)
    }
}

struct NavigateStyle: ViewModifier {
    var view: any View
    func body(content: Content) -> some View {
        content
            .navigationBarBackButtonHidden(true)
            .toolbar() {
                ToolbarItem(placement: .topBarLeading) {
                    NavigationLink {
                        TutorialView()
                    } label: {
                        Image("BackArrow")
                    }.navigationBarBackButtonHidden(true)
                    
                }
            }
    }
}

extension View {
    public func navigateStyle(view: any View) -> some View {
        modifier(NavigateStyle(view: view))
    }
}
//#Preview {
//    NavigationStyles()
//}
