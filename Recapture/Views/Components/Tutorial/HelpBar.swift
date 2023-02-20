//
//  TutorialMore.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 20/10/2022.
//

import SwiftUI

struct HelpBar: View {
    @State private var favoriteColor = 0
    
    var body: some View {
        
        VStack {
            Picker("What is your favorite color?", selection: $favoriteColor) {
                Text("Video Tutorials").tag(0)
                Text("FAQ").tag(1)
            }
            .pickerStyle(.segmented)
        }
        .padding()
        
    }
}

struct TutorialMore_Previews: PreviewProvider {
    static var previews: some View {
        HelpBar()
    }
}
