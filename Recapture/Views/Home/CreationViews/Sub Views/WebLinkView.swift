//
//  WebLinkView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 02/11/2022.
//

import SwiftUI

struct WebLinkView: View {
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading, spacing: 32.0) {
                
                Text("To embed this AR in your website, copy and paste this code into the HTML code of your webpage to embed your augmented reality experience.")
                
                //Code snippet
                Text("<iframe src=google.com/pi/39848 hgjhdgshjhvh   cxbjhvbcvhcbvjhcbvhjc     bvhjcbvhjcbvjxhbzvxhbhjx   cvhjcbvjcvhcjvbcjxvcj .vbjcbvjxcbjvcbvjcxvbcjxhvbcvasvyug")
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity)
                    .frame(height: 200)
                    .background(Color(.systemGray5))
                    .cornerRadius(10)
                
                //Download Button
                Button("Copy Code") {
                    //Do something here
                }
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(.blue)
                .cornerRadius(10)
                
                //Extra infos
                VStack(alignment: .leading, spacing: 4) {
                    Text("To view AR in your browser click on link to open")
                        .font(.callout)
                        .foregroundColor(.gray)
                    Button(action: {
                        guard let url = URL(string: "https://twitter.com/ehizojieihayere") else { return }
                        UIApplication.shared.open(url)
                    }) {
                        Text("recaptureapp.com/360/39848")
                            .font(.callout)
                            .foregroundColor(.blue)
                    }
                    
                }
                
            }
            .padding()
        }
        .offset(y: 24)
        
    }
}

struct WebLinkView_Previews: PreviewProvider {
    static var previews: some View {
        WebLinkView()
    }
}
