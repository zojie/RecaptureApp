//
//  ReviewCapture.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 02/11/2022.
//

import SwiftUI

struct ReviewCapture: View {
    var body: some View {
        NavigationView {
            VStack {
                
                //Header
                VStack(alignment: .center) {
                    Text("SwiftUI")
                        .fontWeight(.semibold)
                    Text("Subtitle")
                        .font(.callout)
                        .foregroundColor(.gray)
                    Text("Jan 12, 2022 15:32")
                        .font(.callout)
                        .foregroundColor(.gray)
                }
                .padding()
                Divider()
                Spacer()
                
                //Body
                VStack {
                    Text("Hello")
                    Text("World")
                }
                Spacer()
                
                //Navbar title
            }
            
        }
    }
}

struct ReviewCapture_Previews: PreviewProvider {
    static var previews: some View {
        ReviewCapture()
    }
}
