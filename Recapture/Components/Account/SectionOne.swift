//
//  SectionOne.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 23/10/2022.
//

import SwiftUI

struct SectionOne: View {
    var body: some View {
        Form {

            Section {
                //Account
                HStack {
                    Text("Account")
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color.gray)
                }
                
                //Domain
                HStack {
                    Text("Domain")
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color.gray)
                }
                
                //Subsciption
                HStack {
                    Text("Subscription")
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color.gray)
                }
            }
        }
    }
}

struct SectionOne_Previews: PreviewProvider {
    static var previews: some View {
        SectionOne()
    }
}
