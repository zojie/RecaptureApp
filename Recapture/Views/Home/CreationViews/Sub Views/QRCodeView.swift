//
//  QRCodeView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 02/11/2022.
//

import SwiftUI

struct QRCodeView: View {
    @State private var showGreeting = true
    @State private var foreColor: Color = .white
    @State private var backColor: Color = .black
    
    let buttonColor = LinearGradient(
        gradient: Gradient(stops: [
            .init(color: Color(#colorLiteral(red: 0, green: 0.47843137383461, blue: 1, alpha: 1)), location: 0),
            .init(color: Color(#colorLiteral(red: 0.5607843399047852, green: 0, blue: 0.9333333373069763, alpha: 1)), location: 1)]),
        startPoint: UnitPoint(x: 0.062499975840183686, y: 0.07031251435910296),
        endPoint: UnitPoint(x: 0.7890624911997284, y: 0.8281249745741668))

    
    var body: some View {
        
        ScrollView {
            
            VStack {
                Image(systemName: "qrcode")
                    .font(.system(size: 100.0, weight: .medium))
                //                        .resizable()
                    .frame(width: 150.0, height: 150.0)
                    .foregroundColor(foreColor)
                    .background(backColor)
                    .clipShape(Rectangle())
                    .cornerRadius(20)
            }
            
            VStack(alignment: .leading, spacing: 42.0) {
                
                //QRCode Shapes
                
                
                //QRCode Color
                VStack(spacing: 20.0) {
                    ColorPicker("Change Foreground Color", selection: $foreColor)
                    ColorPicker("Change Background Color", selection: $backColor)
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
                Button(action: {}) {
                    Text("Download QR Code")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50.0)
                        .background(buttonColor)
                        .cornerRadius(10)
                }
                
                //Extra infos
                VStack(alignment: .leading, spacing: 4) {
                    Text("To view AR in your browser click on link to open")
                        .font(.callout)
                        .foregroundColor(.gray)
                    Button(action: {
                        guard let url = URL(string: "https://twitter.com/ehizojieihayere") else { return }
                        UIApplication.shared.open(url)
                    }) {
                        Text("recaptureapp.com/360/39848")
                            .font(.callout)
                            .foregroundColor(.blue)
                    }
                    
                }
                
                
            }
            .padding()
        }
        .offset(y: 24)
    }
}

struct QRCodeView_Previews: PreviewProvider {
    static var previews: some View {
        QRCodeView()
    }
}
