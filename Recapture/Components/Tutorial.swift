//
//  Tutorial.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 20/10/2022.
//

import SwiftUI

struct Tutorial: View {
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 4.0) {
                
                RoundedRectangle(cornerRadius: 10)
                    .fill(.gray)
                    .frame(width: 344, height: 260)
                
                Text("Title name of learning material here as stated from the YouTube video upload")
                    .fontWeight(.semibold)
                Text("Creators name")
                    .font(.callout)
                    .foregroundColor(Color.gray)
            }
            .padding()
            
        }
    }
    
}


struct Tutorial_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial()
    }
}
