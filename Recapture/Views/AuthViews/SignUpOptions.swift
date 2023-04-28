//
//  SignUpOptions.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 06/02/2023.
//

import SwiftUI

struct SignUpOptions: View {
    var body: some View {
        
        
            VStack(alignment: .leading, spacing: 32) {
                
                VStack(alignment: .leading) {
                    Text("Create account")
                        .font(.system(size: 23, weight: .bold))
                        .foregroundColor(Color.gray)
                        .tracking(-0.88)
                    Text("Select profile option")
                        .font(.system(size: 23, weight: .bold))
                        .tracking(-0.44)
                }
                .padding(.horizontal)
                
                ScrollView {
                    VStack {
                        
                        ZStack {
                            RoundedRectangle (cornerRadius: 8)
                                .stroke (lineWidth: 2)
                                .fill (Color.gray)
                                .frame(maxWidth: .infinity)
                                .frame (height: 50)
                                .cornerRadius (8)
                                .padding(.horizontal)
                            
                            HStack {
                                Image("AppleLoginOptions")
                                    .resizable()
                                    .frame(width: 20, height: 24)
                                Text("Use my email")
                                    .font(.callout)
                            }
                        }
                        
                        
                        ZStack {
                            RoundedRectangle (cornerRadius: 8)
                                .stroke (lineWidth: 2)
                                .fill (Color.gray)
                                .frame(maxWidth: .infinity)
                                .frame (height: 50)
                                .cornerRadius (8)
                                .padding(.horizontal)
                            
                            HStack {
                                Image("AppleLoginOptions")
                                    .resizable()
                                    .frame(width: 20, height: 24)
                                Text("Continue with Google")
                                    .font(.callout)
                            }
                        }
                        
                        
                        ZStack {
                            RoundedRectangle (cornerRadius: 8)
                                .stroke (lineWidth: 2)
                                .fill (Color.gray)
                                .frame(maxWidth: .infinity)
                                .frame (height: 50)
                                .cornerRadius (8)
                                .padding(.horizontal)
                            
                            HStack {
                                Image("AppleLoginOptions")
                                    .resizable()
                                    .frame(width: 20, height: 24)
                                Text("Continue with Apple")
                                    .font(.callout)
                            }
                        }

 
                    }
                }
            }
            .offset(y:24)
        
    }
}

struct SignUpOptions_Previews: PreviewProvider {
    static var previews: some View {
        SignUpOptions()
    }
}
