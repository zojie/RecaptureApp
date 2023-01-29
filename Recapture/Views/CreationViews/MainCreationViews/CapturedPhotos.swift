//
//  ProcessCapture.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 02/11/2022.
//

import SwiftUI

//struct ProgressBar: View {
//    @Binding var value: Float
//
//    var body: some View {
//        GeometryReader { geometry in
//            ZStack(alignment: .leading) {
//                Rectangle().frame(width: geometry.size.width , height: geometry.size.height)
//                    .opacity(0.3)
//                    .foregroundColor(Color(UIColor.systemTeal))
//
//                Rectangle().frame(width: min(CGFloat(self.value)*geometry.size.width, geometry.size.width), height: geometry.size.height)
//                    .foregroundColor(Color(UIColor.systemBlue))
//                    .animation(.linear)
//            }.cornerRadius(45.0)
//        }
//    }
//}

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
