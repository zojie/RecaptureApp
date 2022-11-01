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
            
            Section {
                
                NavigationLink(destination: ProfilePhotoView(), label: {
                    HStack {
                        Image("OnboardingImage")
                            .frame(width: 56, height: 56)
                            .mask(Circle())
                        
                        VStack(alignment: .leading){
                            Text("Profile Photo")
                                .fontWeight(.medium)
                            Text("Tap to edit yor profile photo")
                                .font(.callout)
                                .foregroundColor(.gray)
                        }
                    }
                    
                })
                
            }
            
            Section(header: Text("General")) {
                
                //Account
                NavigationLink(destination: AccountView(), label: {
                    Text("Account")
                    
                })
                
                
                //Domain
                NavigationLink(destination: DomainView(), label: {
                    Text("Domain")
                })
                
                //Subsciption
                NavigationLink(destination: SubscriptionView(), label: {
                    Text("Subscription")
                })
            }
            
            //2ND SECTION
            Section(header: Text("Help")) {
                
                //Tutorials
                NavigationLink(destination: TutorialView(), label: {
                    Text("Tutorials")
                })
                
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
                NavigationLink(destination: SupportView(), label: {
                    Text("Support")
                })
                
            }
            
            //3RD SECTION
            Section(header: Text("Legal")) {
                
                //Privacy Policy
                NavigationLink(destination: PrivacyView(), label: {
                    Text("Privacy Policy")
                })
                
                
                //Terms of service
                NavigationLink(destination: TermsView(), label: {
                    Text("Terms of Use")
                })
                
            }
            
            //4TH SECTION
            Section(header: Text("About App")) {
                
                //Version
                HStack {
                    Text("Recapture AR v1.0")
                        .foregroundColor(.gray)
                }
                
                //Creator
                HStack {
                    Text("Created by Ehizojie Ihayere")
                    Spacer()
                    Image(systemName: "arrow.up.right")
                        .foregroundColor(.blue)
                }
                
                //Blog
                HStack {
                    Text("Visit our Blog")
                    Spacer()
                    Image(systemName: "arrow.up.right")
                        .foregroundColor(.blue)
                }
                
                //Learn more
                HStack {
                    Text("Join Twitter Community")
                    Spacer()
                    Image(systemName: "arrow.up.right")
                        .foregroundColor(.blue)
                }
                
            }
        }
        .navigationTitle("Settings")
        .navigationBarTitleDisplayMode(.large)
        .accentColor(.blue)
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SettingsView()
        }
    }
}
