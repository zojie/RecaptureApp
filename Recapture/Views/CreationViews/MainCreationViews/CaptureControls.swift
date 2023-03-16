//
//  CaptureControls.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 20/12/2022.
//

import SwiftUI

struct CaptureControls: View {
    @ObservedObject var model: CameraViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24.0) {
            VStack(spacing: 24.0) {
                Text("PHOTO CAPTURE")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(.yellow)
                
                HStack {
                    ZStack {
                        ThumbnailView(model: model)
                            .frame(width: 72.0)
                            .padding(.horizontal)
                        
                            Text("\(model.photoIdGetter)")
                                .foregroundColor(Color.black)
                                .frame(width: 32.0, height: 32.0)
                                .background(.white)
                                .mask(Circle())
                    }
                    
                    Spacer()
                    
                    CaptureButton(model: model)
                    
                    Spacer()
                    
                    NavigationLink(destination: ReviewCapture(model: model), tag: 2, selection: $model.selectionOfReviewCaptureNavigation) {
                        
                        Button {
                            model.selectionOfReviewCaptureNavigation = model.isDoneActive ? 2 : 0
                        } label: {
                            Text("Done")
                                .foregroundColor(model.isDoneActive ? .yellow : .gray)
                        }

                       
                    }
                }
            }
            
            VStack(alignment: .leading) {
                Text("\(model.photoIdGetter) selected")
                    .font(.callout)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                Text("You need a minimum of 20 photos to create an AR")
                    .font(.footnote)
                    .foregroundColor(Color.gray)
            }
            
        }
        .padding()
        .frame(width: 375, height: 200)
        .background(.black)
    }
}

//struct CaptureControls_Previews: PreviewProvider {
//    static var previews: some View {
//        CaptureControls()
//    }
//}

