//
//  SignupView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 24/10/2022.
//

import SwiftUI

struct SignupView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var wrongEmail = 0
    @State private var wrongPassword = 0
    @State private var showLoginScreen = false
    
    var body: some View {
        
        
        ScrollView {
            VStack(spacing: 64.0) {
                
                VStack {
                    TextField("Name", text: $email)
                        .padding()
                        .border(.gray)
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongEmail))
                    
                    SecureField("Username", text: $password)
                        .padding()
                        .border(.gray)
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                    
                    TextField("Email", text: $email)
                        .padding()
                        .border(.gray)
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongEmail))
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .border(.gray)
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                }
                    
                VStack {
                    Button("Create Account") {
                            //Do something here
                        }
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(.blue)
                        .cornerRadius(10)
                }
                                    
                    NavigationLink(destination: ContentView(), isActive: $showLoginScreen) {
                        EmptyView()
                    }
                
                Spacer()
                
                Text("By clicking “create account” you agree to Terms of Use and Privacy Policy.")
                    .font(.footnote)
                    .foregroundColor(.gray)
                
            }
            .navigationTitle("Create Account")
            .navigationBarTitleDisplayMode(.large)
            .padding(.horizontal)
        }
        .offset(y:24)
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
