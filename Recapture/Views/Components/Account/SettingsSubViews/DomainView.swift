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
        
        Form {
            
            Section(header: Text("Connect your domain"),
                    footer:
                        VStack(alignment: .leading, spacing: 16.0) {
                            Spacer()
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
            }) {
                VStack(alignment: .leading) {
                    TextField("example.com", text: $domain)
                    Text("Enter domain name")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
            }
        }
                
        
            .navigationTitle("Domain")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        
                    }, label: {
                        Text("Done")
                            .foregroundColor(.blue)
                    })
                    
                }
            }
    }
}

struct DomainView_Previews: PreviewProvider {
    static var previews: some View {
        DomainView()
    }
}
