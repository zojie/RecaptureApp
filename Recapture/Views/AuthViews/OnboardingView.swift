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
            
            VStack {
                
                Image("OnboardingImage")
                    .frame(maxWidth: .infinity)
                    .frame(height: 470.0)
                    .background(Color(.gray))
                    .cornerRadius(10.0)
                    .padding(.horizontal)
                
                Spacer()
                
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("AR MADE EASY")
                        .font(.callout)
                        .fontWeight(.bold)
                        .foregroundColor(Color.gray)
                        .tracking(-0.88)
                    Text("Turn photos into high‑quality AR")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .tracking(-0.88)
                    Text("With Recapture, Transform multiple images to an AR model. Lorem ipsum dolor sit aghdghgdjhsghjfywgyeguyfgeyu.")
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
