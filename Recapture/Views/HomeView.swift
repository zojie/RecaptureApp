//
//  HomeView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 17/10/2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing:16) {
            HeaderBar()
            HStack {
                CardView()
            }
            ProjectListView()
        }
    }
}






struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
