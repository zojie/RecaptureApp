//
//  LanguageView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 30/10/2022.
//

import SwiftUI

struct LanguageView: View {
    var body: some View {
        NavigationView {
            List {
                
                //English
                HStack {
                    Text("English")
                    Spacer()
                    Image(systemName: "checkmark")
                        .foregroundColor(.blue)
                }
                
                //French
                HStack {
                    Text("Francais")
                }
                
                //German
                HStack {
                    Text("Deutshe")
                }
                
                //Chinese
                HStack {
                    Text("Mandarin Chinese")
                }
                
                //Korean
                HStack {
                    Text("Korean")
                }

                
            }
            .listStyle(.plain)
            .navigationTitle("Select language")
            .navigationBarTitleDisplayMode(.inline)
         }
    }
}

struct LanguageView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageView()
    }
}
