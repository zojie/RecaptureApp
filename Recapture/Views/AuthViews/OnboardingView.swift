//
//  OnboardingView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 31/10/2022.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        
//        NavigationView {
            
        VStack(spacing: 56) {
                
                Image("PizzaImage")
                    .resizable()
                
                
                
                VStack(alignment: .leading) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("AR MADE EASY")
                            .font(.callout)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.gray)
                            .tracking(-0.88)
                        Text("Create high quality 3D AR Model from Photos")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .tracking(-0.88)
                        Text("With RecaptureAR, convert your still photos into high-quality 3Dff AR models and create experineces in a whole new way maximumm.")
//                            .foregroundColor(Color.gray)
                            .multilineTextAlignment(.leading)
                            .lineLimit(3)
                    }
                    .padding([.leading, .bottom, .trailing])
                    
                    //Continue
                    Button(action: {
                        
                    }, label: {
                        NavigationLink(destination: LoginView()) {
                                Text("Continue")
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 50.0)
                                    .background(.blue)
                                    .cornerRadius(10)
                        }
                    })
                    .padding(.horizontal)
                }
                
                
                
                
            }
            .navigationTitle("Welcome")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                NavigationLink(destination: TutorialView(), label: {
                    Image(systemName: "questionmark.circle")
                        .foregroundColor(.blue)
                })
            }
//        }
        .accentColor(.blue)

    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
