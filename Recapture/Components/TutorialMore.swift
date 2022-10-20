//
//  TutorialMore.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 20/10/2022.
//

import SwiftUI

struct TutorialMore: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            
            VStack(alignment: .leading, spacing: 8.0) {
                Text ("Want to learn about something else?")
                    .font(.callout)
                    .fontWeight(.semibold)
                Text ("Read more on our blog, join our Twitter Community for more or follow Ehizojie for regular updates")
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
            }
            .padding()
            
            List(0..<3) { item in
                VStack {
                    Text("Visit our Blog")
                }
            }
        }
    }
}

struct TutorialMore_Previews: PreviewProvider {
    static var previews: some View {
        TutorialMore()
    }
}
