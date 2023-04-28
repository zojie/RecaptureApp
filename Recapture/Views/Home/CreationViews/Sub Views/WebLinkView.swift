//
//  WebLinkView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 02/11/2022.
//

import SwiftUI

struct WebLinkView: View {
    let buttonColor = LinearGradient(
        gradient: Gradient(stops: [
            .init(color: Color(#colorLiteral(red: 0, green: 0.47843137383461, blue: 1, alpha: 1)), location: 0),
            .init(color: Color(#colorLiteral(red: 0.5607843399047852, green: 0, blue: 0.9333333373069763, alpha: 1)), location: 1)]),
        startPoint: UnitPoint(x: 0.062499975840183686, y: 0.07031251435910296),
        endPoint: UnitPoint(x: 0.7890624911997284, y: 0.8281249745741668))
    
    
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
                .background(buttonColor)
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
