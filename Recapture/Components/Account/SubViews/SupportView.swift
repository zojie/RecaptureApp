//
//  SupportView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 29/10/2022.
//

import SwiftUI

struct SupportView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("We love feedbacks")
                    .padding()
                
                
                
                List {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Report an issue")
                            Text("Is something wrong? Let us know")
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Share feature suggestions")
                            Text("Got some ideas? Tell us about it")
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Give us a review")
                            Text("Let others know your experinece")
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                }
                .listStyle(.plain)
                .navigationTitle("Support")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct SupportView_Previews: PreviewProvider {
    static var previews: some View {
        SupportView()
    }
}
