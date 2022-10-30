//
//  ToolBarTest.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 30/10/2022.
//

import SwiftUI

struct ToolBarTest: View {
    var body: some View {
        NavigationView {
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationTitle("Hello")
            .toolbar {
                
                ToolbarItem(placement: .navigationBarLeading) {
                    
                    //Recapture AR Logo
                    Button(action: {

                    }, label: {
                        Image(systemName: "heart.fill")
                            .foregroundColor(.red)
                    })
                }
                
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    
                    //Notifications
                    Button(action: {

                    }, label: {
                        Image(systemName: "heart.fill")
                            .foregroundColor(.red)
                    })
                    
                    //Settings
                    Button(action: {

                    }, label: {
                        Image(systemName: "person.crop.circle.fill")
                            .foregroundColor(.red)
                    })

                }
            }
        }
    }
}

struct ToolBarTest_Previews: PreviewProvider {
    static var previews: some View {
        ToolBarTest()
    }
}
