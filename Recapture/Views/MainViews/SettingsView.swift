//
//  SettingsView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 20/10/2022.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        
            Form {
                Section(header: Text("Account profile")) {
                    //Account
                    HStack {
                        Text("Account")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color.gray)
                    }
                    
                    //Domain
                    HStack {
                        Text("Domain")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color.gray)
                    }
                    
                    //Subsciption
                    HStack {
                        Text("Subscription")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color.gray)
                    }
                }
                
                //2ND Section
                Section(header: Text("General")) {
                    
                    //Measure Units
                    HStack {
                        Text("Measure Units")
                        Spacer()
                        Text("Imperial")
                            .foregroundColor(Color.gray)
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color.gray)
                    }
                    
                    //Video format
                    HStack {
                        Text("Video Format")
                        Spacer()
                        Text("Full HD @ 60 FPS")
                            .foregroundColor(Color.gray)
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color.gray)
                    }
                    
                    //Clear catche
                    HStack {
                        Text("Clear Cache")
                        Spacer()
                        Image(systemName: "trash")
                            .foregroundColor(Color.gray)
                    }
                }
                
                //3RD SECTION
                Section(header: Text("Help")) {
                    
                    //Tutorials
                    HStack {
                        Text("Tutorials")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color.gray)
                    }
                    
                    //Language
                    HStack {
                        Text("Language")
                        Spacer()
                        Text("English")
                            .foregroundColor(Color.gray)
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color.gray)
                    }
                    
                    //Contact Support
                    HStack {
                        Text("Contact Support")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color.gray)
                    }
                }
                
                //4TH SECTION
                Section(header: Text("Legal")) {
                    
                    //Privacy Policy
                    HStack {
                        Text("Privacy Policy")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color.gray)
                    }
                    
                    //Terms of service
                    HStack {
                        Text("Terms of Service")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color.gray)
                    }
                    
                    //Latest version
                    HStack {
                        Text("Recapture AR v1.0")
                            .foregroundColor(.gray)
                    }
                    
                }
            }
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.large)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
