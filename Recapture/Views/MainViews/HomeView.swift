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
            VStack {
                
                HeaderBar()
                
                CardView()
                
                ProjectListView()
            }
            .navigationBarTitle("")
//            .offset(y: 16)
            .toolbar {
                
//                ToolbarItemGroup(placement: .navigationBarLeading) {
//
//                    Button(action: {
//
//                    }, label: {
//                        Image("AppLogo")
//                    })
//                }
                
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    
                    NavigationLink(destination: TutorialView(), label: {
                        Image(systemName: "questionmark.circle")
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
