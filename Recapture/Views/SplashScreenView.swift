//
//  SplashScreenView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 03/03/2023.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    
    var body: some View {
        
        if isActive {
            ContentView()
        } else {
            VStack {
                Spacer()
                Image("AppLogo")
                Spacer()
                Text ("Built in Lagos, Nigeria")
                    .font(.footnote)
                    .foregroundColor(.gray)
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
    
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
