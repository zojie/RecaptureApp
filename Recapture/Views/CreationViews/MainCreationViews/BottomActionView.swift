//
//  BottomActionView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 05/11/2022.
//

import SwiftUI

struct BottomActionView: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 24.0) {
            
            VStack(alignment: .leading, spacing: 4.0) {
                HStack {
                    Text("UPLOADING")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    Spacer()
                    Text("45%")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                }
                Text("Please keep the app open while uploading")
                    .foregroundColor(.gray)
            }

            ProgressView(value: 0.25)
            
            Button(action: {
                
            }, label: {
                NavigationLink(destination: LoginView()) {
                    Text("Cancel")
                        .fontWeight(.semibold)
                }
                .foregroundColor(.white)
                .frame(width: 342, height: 42)
                .background(.blue)
                .cornerRadius(10)
            })

        }
        .padding()
        .frame(width: 375, height: 200)
        .background(.black)
    }
}

struct BottomActionView_Previews: PreviewProvider {
    static var previews: some View {
        BottomActionView()
    }
}
