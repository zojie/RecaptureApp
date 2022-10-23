//
//  SectionFour.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 23/10/2022.
//

import SwiftUI

struct SectionFour: View {
    var body: some View {
        
        Form {
            Section {
                
                //Twitter community
                HStack {
                    Text("Join Twitter Community")
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color.gray)
                }
                
                //Privacy Policy
                HStack {
                    Text("Privacy Policy")
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color.gray)
                }
                
                //Terms of service
                HStack {
                    Text("Terms of Service")
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color.gray)
                }
                
            }
        }
    }
}

struct SectionFour_Previews: PreviewProvider {
    static var previews: some View {
        SectionFour()
    }
}
