//
//  ContentView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 17/10/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "rectangle.stack.fill")
                    Text("Project")
                }

            NotificationView()
                .badge(9)
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Notification")
                }

            TutorialView()
                .tabItem {
                    Image(systemName: "video.fill")
                    Text("Tutorials")
                }

            SettingsManager()
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                    Text("Settings")
                }
        }
        
    }
}












struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
            
            
            
            
    }
}

