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
    @State var textfieldBackgroundColor = Color.black
    @State var isTextfieldInFocus = false

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
                    ProfileView()
                } label: {
                    Text("Sign In")
                        .roundedButtonStyle()
                        .padding(.top, 20)
                }
                //.navigateStyle(view: SignInView())
                .navigationBarBackButtonHidden()
                .toolbar() {
                    ToolbarItem(placement: .topBarLeading) {
                        NavigationLink {
                           TutorialView()
    
                        } label: {
                            Image("BackArrow")
                            
                       }
                       
                           
                    }
                }
                Spacer()
                NavigationLink {
                    ResetPasswordView()
                } label: {
                CaptionTextView(title: "Forgot your password?" , textSize: 13)
                    .position(x: 200, y: -10)
                }
                //
            }
             .ignoresSafeArea(.keyboard)
            Spacer()
            
        }
    }
}

#Preview {
    SignInView()
}
