//
//  ProcessCapture.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 02/11/2022.
//

import SwiftUI

struct CapturedPhotos: View {
    @State private var progress = 0.5
    
    var body: some View {
        
        VStack {
            Text("Hello")
        }
        .navigationTitle("Captured Photos")
        .navigationBarTitleDisplayMode(.inline)
        
    }
    
}



struct ProcessCapture_Previews: PreviewProvider {
    static var previews: some View {
        CapturedPhotos()
    }
}
