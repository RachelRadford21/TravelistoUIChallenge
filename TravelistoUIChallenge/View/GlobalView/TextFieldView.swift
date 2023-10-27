//
//  TextFieldView.swift
//  TravelistoUIChallenge
//
//  Created by Rachel Radford on 10/26/23.
//

import SwiftUI

struct TextFieldView: View {
    @State var fieldText = ""
    var placeholder = ""
    
    
    var body: some View {
        
        TextField(placeholder, text: $fieldText)
            .textfieldStyle()

          
    }
}

#Preview {
    TextFieldView()
}
