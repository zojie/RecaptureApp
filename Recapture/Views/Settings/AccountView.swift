//
//  AccountView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 29/10/2022.
//

import SwiftUI

struct AccountView: View {
    @State private var fullname = ""
    @State private var username = ""
    @State private var email = ""
    
    var body: some View {
        //Forms
        Form {
            
            Section(header: Text("Edit account information"), footer: Text("If you decide to change your email, any outstanding subscription will be lost, you will be logged out immediately and a confirmation mail will be sent to your email address for verification.")) {
                VStack(alignment: .leading) {
                    TextField("Ehizojie Ihayere", text: $fullname)
                    Text("Name")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
                
                VStack(alignment: .leading) {
                    TextField("zojie", text: $username)
                    Text("Username")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
                
                VStack(alignment: .leading) {
                    TextField("iszojie@gmail", text: $email)
                        .keyboardType(.emailAddress)
                    Text("Email Address")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
            }
            
            //2ND Section
            Section(header: Text("Security")) {
                
                //Change password
                NavigationLink(destination: ForgotPasswordView(), label: {
                    Text("Change Password")
                })
                
                //Logout
                NavigationLink(destination: LoginView(), label: {
                    Text("Logout")
                })
            }
            
            //Delete account
            Section {
                NavigationLink(destination: SignupView(), label: {
                    Text("Delete Account")
                        .foregroundColor(.red)
                })
            }
        }
        .navigationTitle("Manage account")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
                    
                }, label: {
                    Text("Done")
                        .foregroundColor(.blue)
                })
                
            }
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
