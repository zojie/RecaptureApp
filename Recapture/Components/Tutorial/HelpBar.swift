//
//  TutorialMore.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 20/10/2022.
//

import SwiftUI

struct HelpBar: View {
    var body: some View {
        
        //Projects
        Button {
            //Do something here
        } label: {
            HStack(spacing: 20.0) {
                Text ("Video Tutorials")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(Color.blue)
                Text ("FAQ")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(Color.gray)
            }
        }
    
    .padding()

    }
}

struct TutorialMore_Previews: PreviewProvider {
    static var previews: some View {
        HelpBar()
    }
}
