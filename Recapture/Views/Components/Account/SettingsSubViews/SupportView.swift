//
//  SupportView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 29/10/2022.
//

import SwiftUI

struct SupportView: View {
    var body: some View {
            VStack(alignment: .leading) {
//                Text("We love feedbacks")
//                    .font(.headline)
//                    .fontWeight(.semibold)
//                    .padding()
//
                List {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Report an issue")
                                .fontWeight(.medium)
                            Text("Is something wrong? Let us know")
                                .font(.callout)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        Image(systemName: "arrow.up.right")
                            .foregroundColor(.blue)
                    }
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Share feature suggestions")
                                .fontWeight(.medium)
                            Text("Got some ideas? Tell us about it")
                                .font(.callout)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        Image(systemName: "arrow.up.right")
                            .foregroundColor(.blue)
                    }
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Give us a review")
                                .fontWeight(.medium)
                            Text("Let others know your experinece")
                                .font(.callout)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        Image(systemName: "arrow.up.right")
                            .foregroundColor(.blue)
                    }
                }
                .navigationTitle("Support")
                .navigationBarTitleDisplayMode(.inline)
                .listStyle(.plain)
                .offset(y: 16)
            }
    }
}

struct SupportView_Previews: PreviewProvider {
    static var previews: some View {
        SupportView()
    }
}
