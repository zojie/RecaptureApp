//
//  AccountView1.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 23/10/2022.
//

import SwiftUI

struct AccountView1: View {
    var body: some View {
        
        //Section 1
        List(0..<3) { item in
            HStack {
                Text ("Account")
                Spacer()
                HStack {
                    Image(systemName: "chevron.right")
                }
            }
        }
    }
}

struct AccountView1_Previews: PreviewProvider {
    static var previews: some View {
        AccountView1()
    }
}
