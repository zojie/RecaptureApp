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
                            .frame(width: 56.0, height: 56.0)
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
                NavigationLink(destination: LanguageView(), label: {
                    HStack {
                        Text("Language")
                        Spacer()
                        Text("English")
                            .foregroundColor(Color.gray)
                    }
                })
                
                //Contact Support
                NavigationLink(destination: SupportView(), label: {
                    Text("Support")
                })
                
            }
            
            
            //4TH SECTION
            Section(header: Text("About App")) {
                
                //Legal
                NavigationLink(destination: LegalView(), label: {
                    Text("Legal")
                })
                
                //About App
                NavigationLink(destination: AboutCreatorView(), label: {
                    Text("About RecaptureAR")
                })
                
                //Creator
                HStack {
                    Text("Created by Ehizojie Ihayere")
//                        .foregroundColor(.blue)
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
