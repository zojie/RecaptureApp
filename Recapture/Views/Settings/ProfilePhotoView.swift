//
//  ProfilePhotoView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 01/11/2022.
//

import SwiftUI

struct ProfilePhotoView: View {
    var body: some View {
        
        VStack {
            //Profile image
            ZStack {
                Circle()
                    .frame(width: 300, height: 300)
                    .foregroundColor(.gray)
                Image(systemName: "person.fill")
                    .aspectRatio(contentMode: .fill)
            }
            
            //Update profile image
            VStack(spacing: 8) {
                Text("Change Profile Image")
                    .foregroundColor(Color.blue)
                Text("Profile photo will be used in QR code generation and as your fav icon")
                    .font(.callout)
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.center)
                
            }
            .padding()
            
        }
        .navigationTitle("Manage account")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
                    
                }, label: {
                    Text("Done")
                        .foregroundColor(.blue)
                })
                
            }
        }
    }
}

struct ProfilePhotoView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePhotoView()
    }
}
