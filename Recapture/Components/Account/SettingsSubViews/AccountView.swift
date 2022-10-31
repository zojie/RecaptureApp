//
//  AccountView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 29/10/2022.
//

import SwiftUI

struct AccountView: View {
    @State private var fullname = ""
    
    var body: some View {
            VStack {
                
                //Profile image
                ZStack {
                    Circle()
                        .frame(width: 116.0, height: 116.0)
                        .foregroundColor(.gray)
                    Image(systemName: "person.fill")
                        .aspectRatio(contentMode: .fill)
                }
                
                //Update profile image
                VStack(spacing: 4.0) {
                    Text("Update profile image")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.blue)
                        .multilineTextAlignment(.center)
                    Text("Profile picture will be used in QR code generation and as your fav icon")
                        .font(.callout)
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.center)
                }
                .padding()
                
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
                            TextField("zojie", text: $fullname)
                            Text("Username")
                                .font(.footnote)
                                .foregroundColor(.gray)
                        }
                        
                        VStack(alignment: .leading) {
                            TextField("iszojie@gmail", text: $fullname)
                            Text("Email Address")
                                .font(.footnote)
                                .foregroundColor(.gray)
                        }
                    }
                    
                    //2ND Section
                    Section(header: Text("Security")) {
                        
                        //Change password
                        HStack {
                            Text("Change Password")
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(Color.gray)
                        }
                        
                        //Logout
                        HStack {
                            Text("Logout")
                        }
                    }
                    
                    //Delete account
                    Section {
                        HStack {
                            Text("Delete account")
                                .foregroundColor(.red)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                        }
                    }
                }
                
            }
            .navigationTitle("Manage account")
            .navigationBarTitleDisplayMode(.inline)
            .offset(y: 16)
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
