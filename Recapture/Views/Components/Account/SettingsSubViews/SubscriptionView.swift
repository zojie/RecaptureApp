//
//  SubscriptionView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 29/10/2022.
//

import SwiftUI

let backgroundGradient = LinearGradient(
    colors: [Color(#colorLiteral(red: 0.2549019753932953, green: 0.33725491166114807, blue: 0.4431372582912445, alpha: 1)), Color(#colorLiteral(red: 0.07058823853731155, green: 0.1764705926179886, blue: 0.30980393290519714, alpha: 1))],
    startPoint: .top, endPoint: .bottom)

struct SubscriptionView: View {
    var body: some View {
        ZStack {
            
            backgroundGradient
            
            VStack(alignment: .center, spacing: 24) {
                    Text("Upgrade to Pro")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    
                    VStack(alignment: .leading, spacing: 24) {
                        
                        HStack {
                            Image(systemName: "rectangle.stack.fill")
                                .frame(width: 42.0, height: 42.0)
                                .background(.white .opacity(0.2))
                                .mask(Circle())
                            VStack(alignment: .leading) {
                                Text("Unlimited Projects")
                                    .fontWeight(.semibold)
                                Text("Create unlimited project and create more realities.")
                            }
                        }
                        
                        HStack {
                            Image(systemName: "chart.bar.fill")
                                .frame(width: 42.0, height: 42.0)
                                .background(.white .opacity(0.2))
                                .mask(Circle())
                            VStack(alignment: .leading) {
                                Text("Analytics")
                                    .fontWeight(.semibold)
                                Text("Create unlimited project and create more realities.")
                            }
                        }
                        
                        HStack {
                            Image(systemName: "link")
                                .frame(width: 42.0, height: 42.0)
                                .background(.white .opacity(0.2))
                                .mask(Circle())
                            VStack(alignment: .leading) {
                                Text("Custom Domains")
                                    .fontWeight(.semibold)
                                Text("Create unlimited project and create more realities.")
                            }
                        }
                        
                        HStack {
                            Image(systemName: "square.and.arrow.up.fill")
                                .frame(width: 42.0, height: 42.0)
                                .background(.white .opacity(0.2))
                                .mask(Circle())
                            VStack(alignment: .leading) {
                                Text("Export")
                                    .fontWeight(.semibold)
                                Text("Create unlimited project and create more realities.")
                            }
                        }
                        
                        HStack {
                            Image(systemName: "qrcode")
                                .frame(width: 42.0, height: 42.0)
                                .background(.white .opacity(0.2))
                                .mask(Circle())
                            VStack(alignment: .leading) {
                                Text("Custom QR Codes")
                                    .fontWeight(.semibold)
                                Text("Create unlimited project and create more realities.")
                            }
                        }
                        
                        
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Monthly")
                                    .fontWeight(.semibold)
                                Text("Save 44%")
                            }
                            Spacer()
                            Text("$59")
                                .font(.title3)
                                .fontWeight(.bold)
                        }
                        .padding()
                        .frame(width: 342, height: 64)
                        .border(.gray, width: 2)
                        .cornerRadius(10)
                        
                        VStack {
                            Button("Subscribe Now") {
                                //Do something here
                            }
                            .foregroundColor(.white)
                            .frame(width: 342, height: 50)
                            .background(.blue)
                            .cornerRadius(10)
                            
                            Button("Restore Subscription") {
                                //Do something here
                            }
                            .foregroundColor(.white)
                            .frame(width: 342, height: 50)
                            .cornerRadius(10)
                        }
                    }
                    .foregroundColor(.white)
                }
                .navigationTitle("Subscription")
                .navigationBarTitleDisplayMode(.inline)
                .offset(y: 42)
        }
        .ignoresSafeArea()
    }
}

struct SubscriptionView_Previews: PreviewProvider {
    static var previews: some View {
        SubscriptionView()
    }
}
