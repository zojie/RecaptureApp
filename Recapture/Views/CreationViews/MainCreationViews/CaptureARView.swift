//
//  CaptureARView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 02/11/2022.
//

import SwiftUI

struct CaptureARView: View {
    var body: some View {
        
        VStack {
            
            Spacer()
            BottomActionView()
            
        }
        .navigationBarItems(leading:
                                VStack(alignment: .leading, spacing: 4) {
            Text("Title name of project")
                .fontWeight(.semibold)
            HStack(spacing: 4) {
                Text ("18MB")
                Text ("•")
                Text ("42 Images")
            }
            .font(.callout)
            .foregroundColor(.gray)
            
        }
        )
        
        //Test toolbar
        .toolbar {
            
            ToolbarItemGroup(placement: .navigationBarTrailing) {
                
                NavigationLink(destination: NotificationView(), label: {
                    Image(systemName: "ellipsis")
                        .foregroundColor(.blue)
                })
                
                NavigationLink(destination: SettingsView(), label: {
                    Image(systemName: "trash")
                        .foregroundColor(.red)
                })
            }
            
        }
    }
}

struct CaptureARView_Previews: PreviewProvider {
    static var previews: some View {
        CaptureARView()
    }
}
