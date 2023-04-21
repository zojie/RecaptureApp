//
//  AboutCreatorView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 21/04/2023.
//

import SwiftUI

struct AboutCreatorView: View {
    var body: some View {
        
        
        
        ScrollView {
            VStack(spacing: 56.0) {
                    //Image
                    ZStack {
                        Circle()
                            .frame(width: 300, height: 300)
                            .foregroundColor(.gray)
                    }
                    .padding(.top, 24.0)
                    
                    //Update profile image
                    VStack(alignment: .leading, spacing: 32.0) {
                        VStack(alignment:.leading, spacing: 16) {
                            VStack(alignment:.leading, spacing: 8) {
                                Text("Creator")
                                Text("As a product designer, I've always been passionate about exploring new technologies and pushing the boundaries of what's possible. With this app, I've had the opportunity to dive deeper into iOS development and learn so much along the way. I'm especially grateful to finally put my research on augmented reality to practical use, and I hope that this app will inspire others to embrace the power of technology and design to create meaningful experiences.")
                                    .font(.callout)
                                    .foregroundColor(.gray)
                            }
                            Button {
                                //Do something here
                            } label: {
                                
                                HStack {
                                    Text("Learn more about the story")
                                        .font(.callout)
                                    Image(systemName: "arrow.up.right")
                                        .font(.system(size: 14.0))
                                }
                                .foregroundColor(.blue)
                            }
                        }
                        
                        VStack(alignment: .leading) {
                            Text("Current version")
                            Text("Version 1.0")
                        }
                        .padding(.bottom, 24.0)
                        .font(.callout)
                        .foregroundColor(Color.gray)
                        
                        
                    }
                    .padding(.horizontal)
            }
        }
        .navigationTitle("RecaptureAR")
        .navigationBarTitleDisplayMode(.inline)

        
        
        
    }
}

struct AboutCreatorView_Previews: PreviewProvider {
    static var previews: some View {
        AboutCreatorView()
    }
}
