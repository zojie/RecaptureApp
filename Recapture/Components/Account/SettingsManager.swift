//
//  SettingsManager.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 23/10/2022.
//

import SwiftUI

struct SettingsManager: View {
    var body: some View {
        
        Form {
            Section {
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
            Section {
                
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
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color.gray)
                }
            }
            
            //3RD SECTION
            Section {
                
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
            Section {
                
                //Twitter community
                HStack {
                    Text("Join Twitter Community")
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color.gray)
                }
                
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
            }
            
        }
    }
}

struct SettingsManager_Previews: PreviewProvider {
    static var previews: some View {
        SettingsManager()
    }
}
