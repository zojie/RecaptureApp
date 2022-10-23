//
//  SectionThree.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 23/10/2022.
//

import SwiftUI

struct SectionThree: View {
    var body: some View {
        
        Form {
            Section {
                
                //Tutorials
                HStack {
                    Text("Tutorials")
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color.gray)
                }
                
                //Language
                HStack {
                    Text("Language")
                    Spacer()
                    Text("English")
                        .foregroundColor(Color.gray)
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color.gray)
                }
                
                //Contact Support
                HStack {
                    Text("Contact Support")
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color.gray)
                }
            }
        }
    }
}

struct SectionThree_Previews: PreviewProvider {
    static var previews: some View {
        SectionThree()
    }
}
