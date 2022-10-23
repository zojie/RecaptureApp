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
            
            Form {

                Section {
                    //Visit
                    HStack {
                        Text("Visit our Blog")
                        Spacer()
                        Image(systemName: "arrow.up.right")
                            .foregroundColor(.blue)
                    }
                    
                    //Join Community
                    HStack {
                        Text("Join Twitter Community")
                        Spacer()
                        Image(systemName: "arrow.up.right")
                            .foregroundColor(.blue)
                    }
                    
                    //Ehizojie's Twitter
                    HStack {
                        Text("Ehizojie's Twitter")
                        Spacer()
                        Image(systemName: "arrow.up.right")
                            .foregroundColor(.blue)
                    }
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
