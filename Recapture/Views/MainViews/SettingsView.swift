//
//  SettingsView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 20/10/2022.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        VStack(alignment: .leading) {
           VStack(alignment: .leading) {
                    Text("Settings")
                        .font(.system(size: 22, weight: .bold))
                        .foregroundColor(Color.gray)
                        .tracking(-0.88)
                    Text("Manage your account")
                        .font(.system(size: 22, weight: .bold))
                        .tracking(-0.44)
                
            }
            .padding()
            
            SettingsManager()
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
