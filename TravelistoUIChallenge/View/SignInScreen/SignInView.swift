//
//  SignInView.swift
//  TravelistoUIChallenge
//
//  Created by Rachel Radford on 10/21/23.
//

import SwiftUI

struct SignInView: View {
    @State var email = ""
    @State var password = ""
    
    init() {
        UITextField.appearance().keyboardAppearance = .dark
    }
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack(spacing: 10) {
                
                HeaderView(headerTitle: "Sign in")
                
                TextFieldView(fieldText: email, placeholder:  "Email Address")
                
                SecureFieldView(password: password, passwordFieldText: "Password")
                
                NavigationLink {
                    if email == "" && password == "" {
                        ProfileView()
                    }else {
                        SignInView()
                    }
                } label: {
                    Text("Sign In")
                        .roundedButtonStyle()
                        .padding(.top, 20)
                }
                Spacer()

                CaptionTextView(title: "Forgot your password?" , textSize: 13)
                    .position(x: 200, y: -10)
                
            }.navigationBarBackButtonHidden()
             .ignoresSafeArea(.keyboard)
            Spacer()
            
        }
    }
}

#Preview {
    SignInView()
}
