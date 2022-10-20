//
//  AccountSettings.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 20/10/2022.
//

import SwiftUI

struct AccountSettings: View {
    var body: some View {
        List {
            ForEach(0..<3) { item in
                Text("Account")
            }
        }
    }
}

struct AccountSettings_Previews: PreviewProvider {
    static var previews: some View {
        AccountSettings()
    }
}
