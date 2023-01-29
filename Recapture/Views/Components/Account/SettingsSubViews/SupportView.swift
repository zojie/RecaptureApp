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
                                .fontWeight(.semibold)
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
                                .fontWeight(.semibold)
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
                                .fontWeight(.semibold)
                            Text("Let others know your experinece")
                                .font(.callout)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        Image(systemName: "arrow.up.right")
                            .foregroundColor(.blue)
                    }
                }
                .listStyle(.plain)
                .navigationTitle("Support")
                .navigationBarTitleDisplayMode(.inline)
            }
            .offset(y: 24)
    }
}

struct SupportView_Previews: PreviewProvider {
    static var previews: some View {
        SupportView()
    }
}
