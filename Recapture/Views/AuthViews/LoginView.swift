//
//  LoginView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 24/10/2022.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var wrongEmail = 0
    @State private var wrongPassword = 0
    @State private var showLoginScreen = false
    
    var body: some View {
        VStack(spacing: 64.0) {
            
            VStack {
                TextField("Email", text: $email)
                    .padding()
                    .border(.gray)
                    .cornerRadius(10)
                    .border(.red, width: CGFloat(wrongEmail))
                
                SecureField("Password", text: $password)
                    .padding()
                    .frame(width:342, height: 50)
                    .border(.gray)
                    .cornerRadius(10)
                    .border(.red, width: CGFloat(wrongPassword))
                
                HStack {
                    Button("Forgot Password") {
                        //Do something here
                    }
                    .font(.callout)
                    .foregroundColor(.blue)
                    .frame(width: 342, height: 50)
                    .background(Color("AccentColor"))
                    .cornerRadius(10)
                    
                }
            }
                
            VStack {
                Button("Login") {
                        //Do something here
                    }
                    .foregroundColor(.white)
                    .frame(width: 342, height: 50)
                    .background(.blue)
                    .cornerRadius(10)
                
                Button("Create Account") {
                    //Do something here
                }
                .foregroundColor(.blue)
                .frame(width: 342, height: 50)
                .background(Color("AccentColor"))
                .cornerRadius(10)
            }
                                
                NavigationLink(destination: ContentView(), isActive: $showLoginScreen) {
                    EmptyView()
                }
            
            Spacer()
            
            VStack(alignment: .leading) {
                HStack {
                    Image("GoogleLoginOption")
                    Text("Continue with Google")
                }
                Divider()
                HStack {
                    Image("AppleLoginOptions")
                    Text("Continue with Apple")
                }
            }
            
        }
        .navigationTitle("Login")
        .navigationBarTitleDisplayMode(.large)
        .padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            
    }
}
