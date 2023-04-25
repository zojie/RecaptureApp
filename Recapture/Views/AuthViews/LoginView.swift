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
        
        ScrollView {
            VStack(spacing: 64) {
                
                VStack {
                    TextField("Email", text: $email)
                        .keyboardType(.emailAddress)
                        .padding()
                        .border(.gray)
                        .cornerRadius(12)
                        .border(.red, width: CGFloat(wrongEmail))
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .border(.gray)
                        .cornerRadius(12)
                        .border(.red, width: CGFloat(wrongPassword))
                    
                    HStack {
                        Button(action: {
                            
                        }, label: {
                            NavigationLink(destination: ForgotPasswordView()) {
                                    Text("Forgot Password")
                                    .font(.callout)
                                        .foregroundColor(.blue)
                                        .frame(maxWidth: .infinity)
                                        .frame(height: 50.0)
                                        .cornerRadius(10)
                            }
                        })
                        
                    }
                }
                
//                RoundedRectangle (cornerRadius: 8)
//                    .stroke (lineWidth: 2)
//                    .fill (Color.gray)
//                    .frame(maxWidth: .infinity)
//                    .frame (height: 50)
//                    .cornerRadius (8)
                
                VStack {
                    Button(action: {
                        
                    }, label: {
                        NavigationLink(destination: HomeView()) {
                                Text("Login")
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 50.0)
                                    .background(.blue)
                                    .cornerRadius(10)
                        }
                    })
                    
                    Button(action: {
                        
                    }, label: {
                        NavigationLink(destination: SignupView()) {
                                Text("Create Account")
                                    .foregroundColor(.blue)
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 50.0)
                                    .cornerRadius(10)
                        }
                    })
    
                }
                                    
                
                Spacer()
                
                VStack(alignment: .leading) {
                    
                    HStack {
                        Button(action: {
                            
                        }, label: {
                            NavigationLink(destination: SignUpOptions()) {
                                Image("GoogleLoginOption")
                                Text("Continue with Google")
                                    .foregroundColor(.black)
                            }
                        })
                        
                    }
                    Divider()
                    Button(action: {
                        
                    }, label: {
                        NavigationLink(destination: SignUpOptions()) {
                            Image("AppleLoginOptions")
                            Text("Continue with Apple")
                                .foregroundColor(.black)
                        }
                    })
                }
                
            }
            .navigationTitle("Login")
            .navigationBarTitleDisplayMode(.large)
            .padding(.horizontal)
        }
        .offset(y:24)
        
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            
    }
}
