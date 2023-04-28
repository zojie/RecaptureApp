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

let buttonColor = LinearGradient(
    gradient: Gradient(stops: [
        .init(color: Color(#colorLiteral(red: 0, green: 0.47843137383461, blue: 1, alpha: 1)), location: 0),
        .init(color: Color(#colorLiteral(red: 0.5607843399047852, green: 0, blue: 0.9333333373069763, alpha: 1)), location: 1)]),
    startPoint: UnitPoint(x: 0.062499975840183686, y: 0.07031251435910296),
    endPoint: UnitPoint(x: 0.7890624911997284, y: 0.8281249745741668))

struct SubscriptionView: View {
    var body: some View {
        
        
        ZStack {
            
            backgroundGradient
                .ignoresSafeArea()
            
            ScrollView {
                VStack(alignment: .center, spacing: 24) {
                    VStack {
                        Text("Upgrade to Pro")
                            .font(.system(size: 23, weight: .bold))
                            .foregroundColor(.white)
                        Text("Unlock and start creating Pro experineces")
                            .font(.callout)
                            .foregroundColor(.white)
                    }
                    
                    if #available(iOS 16.0, *) {
                        ScrollView(.horizontal) {
                            HStack {
                                
                                VStack(spacing: 0) {
                                    
                                    Image("OnboardingImage")
                                        .frame(height: 200)
                                        .frame(width: 320)
                                        .cornerRadius(12)
                                    
                                    VStack(alignment: .leading, spacing: 12) {
                                        HStack {
                                            Image(systemName: "checkmark")
                                            Text("Fix and adjust perspective")
                                                .font(.callout)
                                                .fontWeight(.semibold)
                                        }
                                        Text("Easily fix and adjust perspective of your image with powerful Upright, Guided Upright, and Geometry slider tools.")
                                            .font(.callout)
                                    }
                                    .padding(.horizontal)
                                    .frame(height: 150)
                                    .frame(width: 320)
                                    .background()
                                    .cornerRadius(12)
                                }
                                
                                VStack(spacing: 0) {
                                    
                                    Image("OnboardingImage")
                                        .frame(height: 200)
                                        .frame(width: 320)
                                        .cornerRadius(12)
                                    
                                    VStack(alignment: .leading, spacing: 12) {
                                        HStack {
                                            Image(systemName: "checkmark")
                                            Text("Fix and adjust perspective")
                                                .font(.callout)
                                                .fontWeight(.semibold)
                                        }
                                        Text("Easily fix and adjust perspective of your image with powerful Upright, Guided Upright, and Geometry slider tools.")
                                            .font(.callout)
                                    }
                                    .padding(.horizontal)
                                    .frame(height: 150)
                                    .frame(width: 320)
                                    .background()
                                    .cornerRadius(12)
                                }
                                
                                VStack(spacing: 0) {
                                    
                                    Image("OnboardingImage")
                                        .frame(height: 200)
                                        .frame(width: 320)
                                        .cornerRadius(12)
                                    
                                    VStack(alignment: .leading, spacing: 12) {
                                        HStack {
                                            Image(systemName: "checkmark")
                                            Text("Fix and adjust perspective")
                                                .font(.callout)
                                                .fontWeight(.semibold)
                                        }
                                        Text("Easily fix and adjust perspective of your image with powerful Upright, Guided Upright, and Geometry slider tools.")
                                            .font(.callout)
                                    }
                                    .padding(.horizontal)
                                    .frame(height: 150)
                                    .frame(width: 320)
                                    .background()
                                    .cornerRadius(12)
                                }
                                
                                VStack(spacing: 0) {
                                    
                                    Image("OnboardingImage")
                                        .frame(height: 200)
                                        .frame(width: 320)
                                        .cornerRadius(12)
                                    
                                    VStack(alignment: .leading, spacing: 12) {
                                        HStack {
                                            Image(systemName: "checkmark")
                                            Text("Fix and adjust perspective")
                                                .font(.callout)
                                                .fontWeight(.semibold)
                                        }
                                        Text("Easily fix and adjust perspective of your image with powerful Upright, Guided Upright, and Geometry slider tools.")
                                            .font(.callout)
                                    }
                                    .padding(.horizontal)
                                    .frame(height: 150)
                                    .frame(width: 320)
                                    .background()
                                    .cornerRadius(12)
                                }
                                
                                VStack(spacing: 0) {
                                    
                                    Image("OnboardingImage")
                                        .frame(height: 200)
                                        .frame(width: 320)
                                        .cornerRadius(12)
                                    
                                    VStack(alignment: .leading, spacing: 12) {
                                        HStack {
                                            Image(systemName: "checkmark")
                                            Text("Fix and adjust perspective")
                                                .font(.callout)
                                                .fontWeight(.semibold)
                                        }
                                        Text("Easily fix and adjust perspective of your image with powerful Upright, Guided Upright, and Geometry slider tools.")
                                            .font(.callout)
                                    }
                                    .padding(.horizontal)
                                    .frame(height: 150)
                                    .frame(width: 320)
                                    .background()
                                    .cornerRadius(12)
                                }
                                
                            }
                            .padding(.horizontal)
                        }
                        .scrollIndicators(/*@START_MENU_TOKEN@*/.hidden/*@END_MENU_TOKEN@*/)
                    } else {
                        // Fallback on earlier versions
                    }
                    
                    
                    
                    
                    VStack {
                        ZStack {
                            RoundedRectangle (cornerRadius: 8)
                                .stroke (lineWidth: 2)
                                .fill (.white)
                                .frame(maxWidth: .infinity)
                                .frame (height: 64)
                                .cornerRadius (8)
                            
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Monthly")
                                        .font(.callout)
                                        .fontWeight(.semibold)
                                    Text("Save 44%")
                                        .font(.footnote)
                                }
                                Spacer()
                                Text("$59")
                                    .font(.title3)
                                    .fontWeight(.bold)
                            }
                            .foregroundColor(.white)
                            .padding(.horizontal)
                        }
                        .padding(.horizontal)
                    }
                    
                    VStack (spacing: 16) {
                        Button(action: {
                            guard let url = URL(string: "https://dashboard.paystack.com/#/login") else { return }
                            UIApplication.shared.open(url)
                        }) {
                            Text("Subscribe Now")
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .frame(height: 50.0)
                                .background(buttonColor)
                                .cornerRadius(10)
                        }
                        
                        Text("Cancel anytime in your Apple ID settings. \nBilling begins when your free trial ends. \nCancel before your free trial ends and you won't be charged. \nSubscription automatically renews until you cancel.")
                            .font(.footnote)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                        
                        HStack {
                            Button(action: {
                                guard let url = URL(string: "https://www.paystack.com") else { return }
                                UIApplication.shared.open(url)
                            }) {
                                Text("Restore Purchase")
                                    .font(.footnote)
                                    .fontWeight(.semibold)
                            }
                            
                            Text("|").foregroundColor(.white)
                            Button(action: {
                                guard let url = URL(string: "https://www.paystack.com") else { return }
                                UIApplication.shared.open(url)
                            }) {
                                Text("Terms of Use")
                                    .font(.footnote)
                                
                            }
                            
                            Text("|").foregroundColor(.white)
                            Button(action: {
                                guard let url = URL(string: "https://www.paystack.com") else { return }
                                UIApplication.shared.open(url)
                            }) {
                                Text("Privacy Policy")
                                    .font(.footnote)
                            }
                            
                        }
                    }
                    .padding([.leading, .bottom, .trailing])
                    
                    
                    
                }
                .navigationTitle("Subscription")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
        
        
        
    }
}

struct SubscriptionView_Previews: PreviewProvider {
    static var previews: some View {
        SubscriptionView()
    }
}


//VStack(alignment: .leading, spacing: 24) {
//
//    HStack {
//        Image(systemName: "rectangle.stack.fill")
//            .frame(width: 42.0, height: 42.0)
//            .background(.white .opacity(0.2))
//            .mask(Circle())
//        VStack(alignment: .leading) {
//            Text("Unlimited Projects")
//                .fontWeight(.semibold)
//            Text("Create unlimited project and create more realities.")
//        }
//    }
//
//    HStack {
//        Image(systemName: "chart.bar.fill")
//            .frame(width: 42.0, height: 42.0)
//            .background(.white .opacity(0.2))
//            .mask(Circle())
//        VStack(alignment: .leading) {
//            Text("Analytics")
//                .fontWeight(.semibold)
//            Text("Create unlimited project and create more realities.")
//        }
//    }
//
//    HStack {
//        Image(systemName: "link")
//            .frame(width: 42.0, height: 42.0)
//            .background(.white .opacity(0.2))
//            .mask(Circle())
//        VStack(alignment: .leading) {
//            Text("Custom Domains")
//                .fontWeight(.semibold)
//            Text("Create unlimited project and create more realities.")
//        }
//    }
//
//    HStack {
//        Image(systemName: "square.and.arrow.up.fill")
//            .frame(width: 42.0, height: 42.0)
//            .background(.white .opacity(0.2))
//            .mask(Circle())
//        VStack(alignment: .leading) {
//            Text("Export")
//                .fontWeight(.semibold)
//            Text("Create unlimited project and create more realities.")
//        }
//    }
//
//    HStack {
//        Image(systemName: "qrcode")
//            .frame(width: 42.0, height: 42.0)
//            .background(.white .opacity(0.2))
//            .mask(Circle())
//        VStack(alignment: .leading) {
//            Text("Custom QR Codes")
//                .fontWeight(.semibold)
//            Text("Create unlimited project and create more realities.")
//        }
//    }
//
//
//    HStack {
//        VStack(alignment: .leading) {
//            Text("Monthly")
//                .fontWeight(.semibold)
//            Text("Save 44%")
//        }
//        Spacer()
//        Text("$59")
//            .font(.title3)
//            .fontWeight(.bold)
//    }
//    .padding()
//    .frame(width: 342, height: 64)
//    .border(.gray, width: 2)
//    .cornerRadius(10)
//
//    VStack {
//        Button("Subscribe Now") {
//            //Do something here
//        }
//        .foregroundColor(.white)
//        .frame(width: 342, height: 50)
//        .background(.blue)
//        .cornerRadius(10)
//
//        Button("Restore Subscription") {
//            //Do something here
//        }
//        .foregroundColor(.white)
//        .frame(width: 342, height: 50)
//        .cornerRadius(10)
//    }
//}
//.foregroundColor(.white)

