//
//  CaptureControls.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 20/12/2022.
//

import SwiftUI

struct CaptureControls: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 24.0) {
            
            Text("PHOTO CAPTURE")
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundColor(.blue)
            
            HStack {
                
                NavigationLink(destination: CapturedPhotos()) {
                    ZStack {
                        Image("OnboardingImage")
                            .frame(width: 72.0, height: 72.0)
                            .mask(Rectangle())
                            .cornerRadius(10)
                        ZStack {
                            Text("1")
                                .foregroundColor(Color.black)
                                .frame(width: 32.0, height: 32.0)
                                .background(.white)
                                .mask(Circle())
                        }
                    }
                }
                
                
                Spacer()
                
                Image("OnboardingImage")
                    .frame(width: 72.0, height: 72.0)
                    .mask(Circle())
                Spacer()
                
                NavigationLink(destination: ReviewCapture()) {
                    Text("Done")
                        .foregroundColor(.blue)
                }
            }
            
            VStack(alignment: .leading) {
                Text("23 selected")
                    .font(.callout)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                Text("You need a minimum of 20 photos to create an AR")
                    .font(.footnote)
                    .foregroundColor(Color.gray)
            }
            
        }
        .padding()
        .frame(width: 375, height: 200)
        .background(.black)
    }
}

struct CaptureControls_Previews: PreviewProvider {
    static var previews: some View {
        CaptureControls()
    }
}
