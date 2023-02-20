//
//  ProjectHeader.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 23/10/2022.
//

import SwiftUI

struct ProjectHeader: View {
    @State private var favoriteColor = 0
    
    var body: some View {
        
        VStack {
                Picker("What is your favorite color?", selection: $favoriteColor) {
                    Text("Project").tag(0)
                    Text("Draft (3)").tag(1)
                }
                .pickerStyle(.segmented)
            }
            .padding()
        
//            //Bars
//            Button {
//                //Do something here
//            } label: {
//                HStack(spacing: 20.0) {
//                    Text ("Projects")
//                        .font(.callout)
//                        .fontWeight(.semibold)
//                        .foregroundColor(Color.blue)
//                    Text ("Drafts (4)")
//                        .font(.callout)
//                        .fontWeight(.semibold)
//                        .foregroundColor(Color.gray)
//                }
//            }
//            .padding()
//            .offset(y: 26)
        
    }
    
//    struct ContentView: View {
//        @State private var favoriteColor = 0
//
//        var body: some View {
//            VStack {
//                Picker("What is your favorite color?", selection: $favoriteColor) {
//                    Text("Red").tag(0)
//                    Text("Green").tag(1)
//                    Text("Blue").tag(2)
//                }
//                .pickerStyle(.segmented)
//
//                Text("Value: \(favoriteColor)")
//            }
//        }
//    }
}

struct ProjectHeader_Previews: PreviewProvider {
    static var previews: some View {
        ProjectHeader()
    }
}
