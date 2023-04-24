//
//  HomeView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 17/10/2022.
//

import SwiftUI

struct HomeView: View {
    
    
    var body: some View {
        
        
        
        NavigationView {
            
            VStack(spacing: 24.0) {
                
                WelcomeCard()
                ProjectListView()
                
            }
            .navigationBarTitle("")
            .toolbar {
                
                
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    
                    NavigationLink(destination: TutorialView(), label: {
                        Image(systemName: "questionmark.circle")
                            .foregroundColor(.blue)
                    })
                    
                    NavigationLink(destination: WalletView(), label: {
                        Image(systemName: "creditcard")
                            .foregroundColor(.blue)
                    })

                    
                    NavigationLink(destination: ARPreview(), label: {
                        Image(systemName: "arkit")
                            .foregroundColor(.blue)
                    })
                    
                    NavigationLink(destination: NotificationView(), label: {
                        Image(systemName: "bell")
                            .foregroundColor(.blue)
                    })
                    
                    NavigationLink(destination: SettingsView(), label: {
                        Image(systemName: "person")
                            .foregroundColor(.blue)
                    })
                }
                
            }
        }
        .accentColor(.blue)
    }
}






struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
