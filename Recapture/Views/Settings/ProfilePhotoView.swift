//
//  ProfilePhotoView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 01/11/2022.
//

import SwiftUI
import PhotosUI

struct ProfilePhotoView: View {
    
    
    var body: some View {
      
        
        
        VStack {

            //Update profile image
            VStack(spacing: 8) {
                if #available(iOS 16.0, *) {
                    PhotosSelector()
                } else {
                    // Fallback on earlier versions
                }


                Text("Profile photo will be used in QR code generation and as your fav icon. Kindly use a square image when uploading to fit frame.")
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












@available(iOS 16.0, *)
struct PhotosSelector: View {
    @State var selectedItems: [PhotosPickerItem] = []
    @State var data: Data?

    var body: some View {
        
        VStack {
            if let data = data, let uiimage = UIImage(data: data) {
                Image(uiImage: uiimage)
                    .resizable()
                    .scaledToFill()
                    .mask(Circle())
                    .frame(width: 300, height: 300)
            }
            
            PhotosPicker(selection: $selectedItems,
                         maxSelectionCount: 1,
                         matching: .images) {
                Text("Change Profile Image")
                    .foregroundColor(.blue)
            }
        }
        .onChange(of: selectedItems) { newValue in
            guard let item = selectedItems.first else {
                return
            }
            item.loadTransferable(type: Data.self) { result in
                switch result {
                case .success(let data):
                    if let data = data {
                        self.data = data
                    } else {
                        print("Data is nill")
                    }
                case .failure(let failure):
                    fatalError("\(failure)")
                }
            }
        }
        
   
    }
}

