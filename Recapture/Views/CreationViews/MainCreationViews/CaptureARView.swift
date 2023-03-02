//
//  CaptureARView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 02/11/2022.
//

import SwiftUI

struct CaptureARView: View {
    @StateObject var model = CameraViewModel()
    
    var body: some View {
        
        //Bottom Capturing
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack{
                
                CameraView(model: model)
                Spacer()
                CaptureControls(model: model)
          
            }
            .navigationBarTitle("")
            .toolbar {
                
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    
                    NavigationLink(destination: TutorialView(), label: {
                        Image(systemName: "bolt.circle")
                            .foregroundColor(.blue)
                    })
                    
                    NavigationLink(destination: NotificationView(), label: {
                        Image(systemName: "info.circle")
                            .foregroundColor(.blue)
                    })
                    
                }
                
        }
        }

    }
}

//struct CaptureARView_Previews: PreviewProvider {
//    static var previews: some View {
//        CaptureARView()
//    }
//}
