//
//  TestTab.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 30/10/2022.
//

import SwiftUI

struct TestTab: View {
    var body: some View {
        TabView {
            Text("ReceivedView")
                .badge(2)
                .tabItem {
                    Label("Received", systemImage: "tray.and.arrow.down.fill")
                }
            Text("SentView")
                .tabItem {
                    Label("Sent", systemImage: "tray.and.arrow.up.fill")
                }
            Text("AccountView")
                .badge("!")
                .tabItem {
                    Label("Account", systemImage: "person.crop.circle.fill")
                }
        }
    }
}

struct TestTab_Previews: PreviewProvider {
    static var previews: some View {
        TestTab()
    }
}
