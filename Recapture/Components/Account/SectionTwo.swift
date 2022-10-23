//
//  SectionTwo.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 23/10/2022.
//

import SwiftUI

struct SectionTwo: View {
    var body: some View {
        
        Form {
            Section {
                
                //Measure Units
                HStack {
                    Text("Measure Units")
                    Spacer()
                    Text("Imperial")
                        .foregroundColor(Color.gray)
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color.gray)
                }
                
                //Video format
                HStack {
                    Text("Video Format")
                    Spacer()
                    Text("Full HD @ 60 FPS")
                        .foregroundColor(Color.gray)
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color.gray)
                }
                
                //Clear catche
                HStack {
                    Text("Clear Cache")
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color.gray)
                }
                
              
            }
        }
    }
}

struct SectionTwo_Previews: PreviewProvider {
    static var previews: some View {
        SectionTwo()
    }
}
