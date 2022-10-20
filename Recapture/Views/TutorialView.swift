//
//  TutorialView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 20/10/2022.
//

import SwiftUI

struct TutorialView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
           VStack(alignment: .leading) {
                    Text("Tutorials")
                        .font(.system(size: 22, weight: .bold))
                        .foregroundColor(Color.gray)
                        .tracking(-0.88)
                    Text("Lets see how its done")
                        .font(.system(size: 22, weight: .bold))
                        .tracking(-0.44)
                
            }
            .padding()
            
            Tutorial()
            TutorialMore()
        }
    }
}

struct TutorialView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialView()
    }
}
