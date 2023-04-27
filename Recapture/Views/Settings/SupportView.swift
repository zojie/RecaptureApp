//
//  SupportView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 29/10/2022.
//

import SwiftUI
import StoreKit

struct SupportView: View {
    var body: some View {
            VStack(alignment: .leading) {
//                Text("We love feedbacks")
//                    .font(.headline)
//                    .fontWeight(.semibold)
//                    .padding()
//
                List {
                    
                    Button(action: {
                        guard let url = URL(string: "https://forms.google.com/") else { return }
                        UIApplication.shared.open(url)
                    }) {
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
                    }
                    
                    
                    
                    
                    Button(action: {
                        guard let url = URL(string: "https://forms.google.com/") else { return }
                        UIApplication.shared.open(url)
                    }) {
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
                    }
                    
                    
                    
                    Button(action: {
                        if let url = URL(string: "https://itunes.apple.com/app/idcom.benagos.recapture?action=write-review") {
                            UIApplication.shared.open(url, options: [:], completionHandler: nil)
                        }
                    }) {
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Rate us")
                                    .fontWeight(.medium)
                                Text("Boost our presence :)")
                                    .font(.callout)
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                            Image(systemName: "arrow.up.right")
                                .foregroundColor(.blue)
                        }
                    }
                    
                    
                    
                    
                    
                    Button(action: {
                        if let url = URL(string: "https://itunes.apple.com/app/idcom.benagos.recapture?action=write-review") {
                            UIApplication.shared.open(url, options: [:], completionHandler: nil)
                        }
                    }) {
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
                    
                }
                .navigationTitle("Support")
                .navigationBarTitleDisplayMode(.inline)
                .listStyle(.plain)
            }
    }
}

struct SupportView_Previews: PreviewProvider {
    static var previews: some View {
        SupportView()
    }
}
