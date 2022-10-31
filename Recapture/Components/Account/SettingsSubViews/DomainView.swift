//
//  DomainView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 29/10/2022.
//

import SwiftUI

struct DomainView: View {
    @State private var domain = ""
    
    var body: some View {
            VStack(spacing: 42.0) {
                VStack(alignment: .leading) {
                    Text("Connect your domain")
                        .fontWeight(.semibold)
                    TextField("example.com", text: $domain)
                        .padding()
                        .frame(width:342, height: 50)
                        .border(.gray)
                        .cornerRadius(2)
                    Button("Connect domain") {
                        //Do something here
                    }
                    .foregroundColor(.white)
                    .frame(width: 342, height: 50)
                    .background(.blue)
                    .cornerRadius(10)
                }
                
                VStack(alignment: .leading, spacing: 16.0) {
                    Text("Instructions")
                        .fontWeight(.semibold)
                    VStack(alignment: .leading, spacing: 4.0) {
                        Text("Step 1")
                            .foregroundColor(.gray)
                        Text("Go to your DNS record and create a new CNAME value using “www” as Host and “realitymenu.com/ehizojie” as your value")
                    }
                    VStack(alignment: .leading, spacing: 4.0) {
                        Text("Step 2")
                            .foregroundColor(.gray)
                        Text("Click on Connect domain to complete setup")
                    }
                    VStack(alignment: .leading, spacing: 4.0) {
                        Text("Important")
                            .fontWeight(.semibold)
                        Text("Depending on your DNS, update may take 1 - 24 hours to complete setup")
                    }
                }
                .padding()
                Spacer()
            }
            .navigationTitle("Domain")
            .navigationBarTitleDisplayMode(.inline)
            .offset(y: 24)
    }
}

struct DomainView_Previews: PreviewProvider {
    static var previews: some View {
        DomainView()
    }
}
