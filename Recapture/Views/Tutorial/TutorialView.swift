//
//  Tutorial.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 20/10/2022.
//

import SwiftUI

struct TutorialView: View {
    @State private var favoriteColor = 0
    
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Picker("", selection: $favoriteColor) {
                Text("Video Tutorials").tag(0)
                Text("FAQ").tag(1)
            }
            .pickerStyle(.segmented)
            .padding()
            
            
            
            
            //Notification Lists
            List {
                ForEach(0..<5) { item in
                    
                    //ImageAR Preview
                    HStack {
                        Image(systemName: "image")
                            .frame(width: 72, height: 72)
                            .background(Color(#colorLiteral(red: 0.886274516582489, green: 0.886274516582489, blue: 0.8980392217636108, alpha: 1)))
                            .cornerRadius(12)
                        
                        //Project Details
                        VStack(alignment: .leading, spacing: 4.0) {
                            Text("Introduction to Recapture AR and all other things attached to it")
                                .font(.body)
                                .fontWeight(.semibold)
                                .lineLimit(2)
                            
                            HStack {
                                Image(systemName: "play")
                                Text ("102 Views")
                            }
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        }
                        .padding(.vertical)
                        
                        Spacer()
                        Image(systemName: "arrow.up.right")
                            .foregroundColor(.blue)
                    }
                }
            }
            .listStyle(.plain)
        }
        .navigationTitle("Help Center")
        .navigationBarTitleDisplayMode(.large)


    }
    
}


struct Tutorial_Previews: PreviewProvider {
    static var previews: some View {
        TutorialView()
    }
}
