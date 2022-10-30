//
//  NotificationView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 20/10/2022.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
//               VStack(alignment: .leading) {
//                        Text("Notification")
//                            .font(.system(size: 22, weight: .bold))
//                            .foregroundColor(Color.gray)
//                            .tracking(-0.88)
//                        Text("Your project activities")
//                            .font(.system(size: 22, weight: .bold))
//                            .tracking(-0.44)
//
//                }
//                .padding()
                Notifications()

            }
            .navigationTitle("Notifications")
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
