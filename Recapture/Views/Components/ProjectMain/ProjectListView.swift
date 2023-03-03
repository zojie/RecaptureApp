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
            
            //Controllers
            ProjectHeader()
            
            //Project List
            List {
                ForEach(0..<3) { item in
                    
                    //Image AR View
                    HStack {
                        Image(systemName: "image")
                            .frame(width: 100, height: 100)
                            .background(.gray)
                            .cornerRadius(12)
                        
                        //Project Details
                        VStack(alignment: .leading, spacing: 4) {
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
                            
                            
                            HStack(spacing: 4) {
                                Text ("18MB")
                                Text ("•")
                                Text ("42 Images")
                            }
                            .font(.footnote)
                            .foregroundColor(.gray)
                        }
                        .padding(.vertical)
                        
                        Spacer()
                        
                        //More Options
                        ProjectActions()
                    }
                    .contextMenu {
                        Button {
                            //Do something here
                        } label: {
                            Label("Share", systemImage: "square.and.arrow.up")
                        }
                        
                        Button {
                            //Do something here
                        } label: {
                            Label("Get Info", systemImage: "info.circle")
                        }
                        
                        Button {
                            //Do something here
                        } label: {
                            Label("Rename Project", systemImage: "pencil")
                        }
                        
                        Button {
                            //Do something here
                        } label: {
                            Label("AR View", systemImage: "arkit")
                        }
                        
                        Divider()
                        
                        Button {
                            //Do something here
                        } label: {
                            Label("QR Code", systemImage: "qrcode")
                        }
                        
                        Button {
                            //Do something here
                        } label: {
                            Label("Analytics", systemImage: "chart.bar")
                        }
                        
                        Button {
                            //Do something here
                        } label: {
                            Label("Web Link", systemImage: "link")
                        }
                        
                        Divider()
                        
                        Button(role: .destructive) {
                            //Do something here
                        } label: {
                            Label("Delete", systemImage: "trash")
                        }
                    }
                }
            }
            .listStyle(.plain)
        }
    }
}


struct ProjectListView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectListView()
    }
}
