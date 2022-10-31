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
                
                CardView()

                ProjectListView()
            }
            .navigationBarTitle("")
            .offset(y: 16)
            .toolbar {
                
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    
                    NavigationLink(destination: TutorialView(), label: {
                        Image(systemName: "video")
                            .foregroundColor(.blue)
                    })
                    
                    NavigationLink(destination: NotificationView(), label: {
                        Image(systemName: "heart")
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
