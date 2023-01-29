//
//  ProjectHeader.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 23/10/2022.
//

import SwiftUI

struct ProjectHeader: View {
    var body: some View {
        
            //Bars
            Button {
                //Do something here
            } label: {
                HStack(spacing: 20.0) {
                    Text ("Projects")
                        .font(.callout)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.blue)
                    Text ("Drafts (4)")
                        .font(.callout)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.gray)
                }
            }
            .padding()
            .offset(y: 26)
        
    }
}

struct ProjectHeader_Previews: PreviewProvider {
    static var previews: some View {
        ProjectHeader()
    }
}
