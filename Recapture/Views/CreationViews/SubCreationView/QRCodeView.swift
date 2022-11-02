//
//  QRCodeView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 02/11/2022.
//

import SwiftUI

struct QRCodeView: View {
    @State private var showGreeting = true

    
    var body: some View {
        VStack(alignment: .leading, spacing: 42.0) {
            
            //QRCode Shapes
            VStack(alignment: .leading) {
                Text("Shape")
                    .fontWeight(.semibold)
                HStack {
                    Image("QRImages")
                    Image("QRImages")
                    Image("QRImages")
                }
            }
            
            //QRCode Color
            VStack(alignment: .leading) {
                Text("Colour")
                    .fontWeight(.semibold)
                HStack {
                    Image("OnboardingImage")
                        .frame(width: 55.0, height: 55.0)
                        .mask(Circle())
                    Image("OnboardingImage")
                        .frame(width: 55.0, height: 55.0)
                        .mask(Circle())
                    Image("OnboardingImage")
                        .frame(width: 55.0, height: 55.0)
                        .mask(Circle())
                    Image("OnboardingImage")
                        .frame(width: 55.0, height: 55.0)
                        .mask(Circle())
                    Image("OnboardingImage")
                        .frame(width: 55.0, height: 55.0)
                        .mask(Circle())
                }
            }
            
            //QRCode Background Color
            VStack(alignment: .leading) {
                Text("Background Colour")
                    .fontWeight(.semibold)
                HStack {
                    Image("OnboardingImage")
                        .frame(width: 55.0, height: 55.0)
                        .mask(Circle())
                    Image("OnboardingImage")
                        .frame(width: 55.0, height: 55.0)
                        .mask(Circle())
                    Image("OnboardingImage")
                        .frame(width: 55.0, height: 55.0)
                        .mask(Circle())
                    Image("OnboardingImage")
                        .frame(width: 55.0, height: 55.0)
                        .mask(Circle())
                    Image("OnboardingImage")
                        .frame(width: 55.0, height: 55.0)
                        .mask(Circle())
                }
            }
            
            //QRCode Include Logo
            HStack {
                VStack(alignment: .leading) {
                    Text("Logo")
                        .fontWeight(.semibold)
                    Text("Include my Logo")
                        .font(.callout)
                        .foregroundColor(.gray)
                }
                Spacer()
                Toggle("", isOn: $showGreeting)
            }
            
            //Download Button
            Button("Download QR Code") {
                //Do something here
            }
            .foregroundColor(.white)
            .frame(width: 342, height: 50)
            .background(.blue)
            .cornerRadius(10)
            
            //Extra infos
            VStack(alignment: .leading, spacing: 4) {
                Text("To view AR in your browser click on link to open")
                    .font(.callout)
                    .foregroundColor(.gray)
                Text("recaptureapp.com/360/39848")
                    .font(.callout)
                    .foregroundColor(.blue)
            }
            
        }
        .padding()
    }
}

struct QRCodeView_Previews: PreviewProvider {
    static var previews: some View {
        QRCodeView()
    }
}
