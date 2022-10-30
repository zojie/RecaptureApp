//
//  HomeView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 17/10/2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                
                CardView()

                ProjectListView()
            }
            .navigationBarTitle("Welcome")
            .toolbar {

                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    
                    //Notifications
                    Button(action: {

                    }, label: {
                        Image(systemName: "heart")
                            .foregroundColor(.black)
                    })
                    
                    //Settings
                    Button(action: {

                    }, label: {
                        Image(systemName: "person.crop.circle")
                            .foregroundColor(.black)
                    })

                }
            }
        }
    }
}






struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
