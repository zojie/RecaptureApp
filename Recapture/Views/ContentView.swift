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
                    Image(systemName: "cube.fill")
                    Text("Project")
                }
                
        }
    }
}


















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

