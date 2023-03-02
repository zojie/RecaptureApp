//
//  ProjectActions.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 22/10/2022.
//

import SwiftUI

struct ProjectActions: View {
    var body: some View {
        
        Menu {
                        
            //Share
            Button {
                //Do something here
            } label: {
                Label("Share", systemImage: "square.and.arrow.up")
            }
            
            //Get Info
            Button {
                //Do something here
            } label: {
                Label("Get Info", systemImage: "info.circle")
            }
            
            //Rename Project
            Button {
                //Do something here
            } label: {
                Label("Rename Project", systemImage: "pencil")
            }
            
            //AR View
            Button {
                //Do something here
            } label: {
                Label("AR View", systemImage: "arkit")
            }
            
            Divider()
            
            //QR Code
            Button {
                //Do something here
            } label: {
                Label("QR Code", systemImage: "qrcode")
            }
            
            //Analytics
            Button {
                //Do something here
            } label: {
                Label("Analytics", systemImage: "chart.bar")
            }
            
            //Web Link
            Button {
                //Do something here
            } label: {
                Label("Web Link", systemImage: "link")
            }
            
            Divider()
            
            //Delete
            Button(role: .destructive) {
                //Do something here
            } label: {
                Label("Delete", systemImage: "trash")
            }
          
            
        } label: {
            Label("", systemImage: "ellipsis")
        }
        .foregroundColor(/*@START_MENU_TOKEN@*/.gray/*@END_MENU_TOKEN@*/)
    }
}

struct ProjectActions_Previews: PreviewProvider {
    static var previews: some View {
        ProjectActions()
    }
}
