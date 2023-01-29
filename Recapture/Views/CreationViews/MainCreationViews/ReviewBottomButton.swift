//
//  ReviewBottomButton.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 20/12/2022.
//

import SwiftUI

struct ReviewBottomButton: View {
    @State private var showGreeting = true
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 24.0) {
            
            VStack(alignment: .leading, spacing: 4.0) {
                
                HStack {
                    VStack(alignment: .leading, spacing: 4.0) {
                        Text("Object Masking")
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                        
                        Text("Switch on if you fliped or rotated your object while capturing")
                            .font(.callout)
                            .foregroundColor(.gray)
                            .lineLimit(nil)
                    }
                    Spacer()
                    Toggle("", isOn: $showGreeting)
                }
            }
            
            Button(action: {
                
            }, label: {
                NavigationLink(destination: ReviewBottomUpload()) {
                    Text("Process Images")
                }
                .foregroundColor(.white)
                .frame(width: 342, height: 42)
                .background(.blue)
                .cornerRadius(10)
            })

        }
        .padding()
        .frame(width: 375, height: 200)
        .background(.black)
        
    }
}

struct ReviewBottomButton_Previews: PreviewProvider {
    static var previews: some View {
        ReviewBottomButton()
    }
}
