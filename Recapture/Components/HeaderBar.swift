//
//  HeaderBar.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 17/10/2022.
//

import SwiftUI

struct HeaderBar: View {
    
    var body: some View {
        VStack(alignment: .trailing) {
            Text ("Upgrade Plan")
                .font(.system(size: 15, weight: .regular))
                .foregroundColor(Color.blue)
                .padding()
            
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Welcome to")
                        .font(.system(size: 22, weight: .bold))
                        .foregroundColor(Color.gray)
                        .tracking(-0.88)
                    Text("Ehizojie’s Reality Library")
                        .font(.system(size: 22, weight: .bold))
                        .tracking(-0.44)
                }
                Spacer()
                
                Image(systemName: "person.fill")
                    .frame(width: 56, height: 56)
                    .background(Color(#colorLiteral(red: 0.886274516582489, green: 0.886274516582489, blue: 0.8980392217636108, alpha: 1)))
                    .cornerRadius(12)
                    .mask(Circle())
            }
            .padding()
        }
    }
}

struct HeaderBar_Previews: PreviewProvider {
    static var previews: some View {
        HeaderBar()
    }
}
