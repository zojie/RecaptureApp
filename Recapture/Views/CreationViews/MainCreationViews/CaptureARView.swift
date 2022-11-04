//
//  CaptureARView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 02/11/2022.
//

import SwiftUI

struct CaptureARView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Help")
            }
            .navigationBarItems(leading:
                VStack(alignment: .leading) {
                    Text("SwiftUI")
                        .fontWeight(.semibold)
                    Text("Subtitle")
                        .font(.callout)
                        .foregroundColor(.gray)
                    Text("January 12, 2022 15:32")
                        .font(.callout)
                        .foregroundColor(.gray)
                }
        )
        }
    }
}

struct CaptureARView_Previews: PreviewProvider {
    static var previews: some View {
        CaptureARView()
    }
}
