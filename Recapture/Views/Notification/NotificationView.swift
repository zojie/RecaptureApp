//
//  NotificationView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 20/10/2022.
//

import SwiftUI

struct NotificationView: View {
    
    var body: some View {
        
        VStack {
            List {
                ForEach(0..<3) { item in
                    
                    //ImageAR Preview
                    HStack {
                        Image(systemName: "image")
                            .frame(width: 72, height: 72)
                            .background(Color(.systemGray5))
                            .cornerRadius(12)
                        
                        //              Project Details
                        VStack(alignment: .leading, spacing: 4.0) {
                            HStack {
                                Text("100+ views 🎉")
                                    .font(.body)
                                    .fontWeight(.semibold)
                                    .lineLimit(1)
                                Spacer()
                                Text("2/7/22")
                                    .font(.footnote)
                                    .foregroundColor(.gray)
                            }
                            
                            
                            VStack(alignment: .leading) {
                                Text ("People are noticing. The Pet Project capture is gaining views.")
                                    .font(.subheadline)
                            }
                            .font(.footnote)
                            .foregroundColor(.gray)
                            
                        }
                        .padding(.vertical)
                        
                    }
                }
            }
            .listStyle(.plain)
        }
        .navigationTitle("Notifications")
        .navigationBarTitleDisplayMode(.large)

        
        
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}