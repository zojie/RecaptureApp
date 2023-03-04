//
//  OnboardingView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 31/10/2022.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        NavigationView {
            VStack {
                
                Image("OnboardingImage")
                
                Spacer()
                
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("AR Made Easy")
                        .font(.title)
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
                .padding()
                
                Spacer()
                
                //Continue
                Button(action: {
                    
                }, label: {
                    NavigationLink(destination: LoginView()) {
                        Text("Continue")
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(.white)
                    .frame(width: 342, height: 50)
                    .background(.blue)
                    .cornerRadius(10)
                })
                
            }
            .navigationBarTitle("Welcome")
            .navigationBarTitleDisplayMode(.inline)
//            .offset(y: 16)
            .toolbar {
                NavigationLink(destination: TutorialView(), label: {
                    Image(systemName: "questionmark.circle")
                        .foregroundColor(.blue)
                })
            }
        }
        .accentColor(.blue)

    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
