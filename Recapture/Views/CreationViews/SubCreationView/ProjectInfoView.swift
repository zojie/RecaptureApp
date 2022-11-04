//
//  ProjectInfoView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 02/11/2022.
//

import SwiftUI

struct ProjectInfoView: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 24.0) {
            
            //Project name
            VStack(alignment: .leading, spacing: 4) {
                Text("Project name")
                    .foregroundColor(.gray)
                Text("Full name of project here with no truncation")
            }
            
            //Project name
            VStack(alignment: .leading, spacing: 4) {
                Text("Project Type")
                    .foregroundColor(.gray)
                Text("Photogrammetry")
            }
            
            //Project name
            VStack(alignment: .leading, spacing: 4) {
                Text("Date Created")
                    .foregroundColor(.gray)
                Text("January 2, 2022 15:32")
            }
            
            //Project name
            VStack(alignment: .leading, spacing: 4) {
                Text("Last Edited")
                    .foregroundColor(.gray)
                Text("2 minutes ago")
            }
            
            //Activity status
            VStack(alignment: .leading, spacing: 24) {
                
                Text("ACTIVITY STATUS")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                
                //QR Code
                HStack {
                    VStack(alignment: .leading, spacing: 4) {
                        Text("QR Code")
                            .fontWeight(.semibold)
                        Text("Get QR Code")
                            .foregroundColor(.blue)
                    }
                    Spacer()
                    Text("INACTIVE")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .frame(width: 80, height: 32.0)
                        .background(Color(.red))
                        .cornerRadius(4)
                        .font(.footnote)
                }
                
                //Web link
                HStack {
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Web Link")
                            .fontWeight(.semibold)
                        Text("Get Embedded Link")
                            .foregroundColor(.blue)
                    }
                    Spacer()
                    Text("ACTIVE")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .frame(width: 80, height: 32.0)
                        .background(Color(.brown))
                        .cornerRadius(4)
                        .font(.footnote)
                }
            }
            
        }
        .padding()
        
    }
}

struct ProjectInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectInfoView()
    }
}
