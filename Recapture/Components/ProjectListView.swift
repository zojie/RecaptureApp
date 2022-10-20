//
//  ProjectListView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 17/10/2022.
//

import SwiftUI

struct ProjectListView: View {    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            //            Controllers
            HStack(spacing: 16.0) {
                Text ("Projects")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(Color.blue)
                Text ("Drafts")
                    .font(.system(size: 14, weight: .semibold))
            }
            .padding()
            
            //            Project Lists
            List {
                ForEach(0..<3) { item in
                    
                    //             ImageAR Preview
                    HStack {
                        Image(systemName: "image")
                            .frame(width: 100, height: 100)
                            .background(Color(#colorLiteral(red: 0.886274516582489, green: 0.886274516582489, blue: 0.8980392217636108, alpha: 1)))
                            .cornerRadius(12)
                        
                        //              Project Details
                        VStack(alignment: .leading, spacing: 4.0) {
                            Text("Full name of project with a max of two lines and more, i want it auto truncated into two lines")
                                .font(.body)
                                .fontWeight(.semibold)
                                .lineLimit(2)
                            
                            
                            VStack(alignment: .leading) {
                                Text ("Created Jun 19, 2022")
                                    .font(.subheadline)
                                Text ("Last edit 2 minutes ago")
                                    .font(.subheadline)
                                
                            }
                            .font(.footnote)
                            .foregroundColor(.gray)
                            
                            
                            HStack {
                                Text ("18MB")
                                Text ("42 Images")
                            }
                            .font(.footnote)
                            .foregroundColor(.gray)
                        }
                        .padding(.vertical)
                        
                        //                 More Options
                        Image(systemName: "eye")
                    }
                }
            }
            .listStyle(.grouped)
        }
    }
}


struct ProjectListView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectListView()
    }
}
