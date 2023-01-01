//
//  TutorialMore.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 20/10/2022.
//

import SwiftUI

struct HelpBar: View {
    var body: some View {
        
        //Bars
        Button {
            //Do something here
        } label: {
            HStack(spacing: 20.0) {
                Text ("Video Tutorials")
                    .font(.callout)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.blue)
                Text ("FAQ")
                    .font(.callout)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.gray)
            }
        }
        .padding()
        .offset(y: 26)

    }
}

struct TutorialMore_Previews: PreviewProvider {
    static var previews: some View {
        HelpBar()
    }
}
