//
//  NotificationView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 20/10/2022.
//

import SwiftUI

struct NotificationView: View {
    @State var notificationItems = [
        NotificationItem(image: "PizzaImage", title: 100, confetti: "🎉", date: Date()),
        NotificationItem(image: "WaterBottle", title: 500, confetti: "🎉", date: Date()),
        NotificationItem(image: "BeachHat", title: 1000, confetti: "🎉", date: Date())
    ]
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM dd"
        return formatter
    }()
    
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            VStack(alignment: .leading) {
                Text("Notification")
                    .font(.system(size: 23, weight: .bold))
                    .foregroundColor(Color.gray)
                    .tracking(-0.88)
                Text("Your project activities")
                    .font(.system(size: 23, weight: .bold))
                    .tracking(-0.44)
            }
            .padding(.horizontal)
            
            List(notificationItems) { item in
                HStack {
                    Image(item.image)
                        .resizable()
                        .frame(width: 76, height: 76)
                        .cornerRadius(12)
                    
                    VStack(alignment: .leading, spacing: 4.0) {
                        HStack {
                            Text("\(item.title)+ views \(item.confetti)")
                                .font(.body)
                                .fontWeight(.semibold)
                                .lineLimit(1)
                            Spacer()
                            Text("\(dateFormatter.string(from: item.date))")
                                .font(.footnote)
                                .foregroundColor(.gray)
                        }
                        
                        
                        VStack(alignment: .leading) {
                            Text (item.description[3])
                                .font(.subheadline)
                        }
                        .font(.footnote)
                        .foregroundColor(.gray)
                        
                    }
                    .padding(.vertical)
                    
                }
            }
            .listStyle(.plain)
        }
//        .navigationTitle("Notifications")
//        .navigationBarTitleDisplayMode(.large)

        
        
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}













struct NotificationItem: Identifiable {
    let id = UUID()
    var image: String
    var title: Int
    let confetti: String
    var description = [
        "Yipee. The Zojie’s Burger & Chips is doing well!",
        "People are noticing. The Pet Project capture is gaining views!",
        "You are crushing it with The Pet Project capture!",
        "Wow. The Pet Project capture is capturing peopls view!",
        "Its definitely giving. The Pet Project capture is a star!"
    ]
    var date: Date
}





//struct DescriptionMessage {
//    let viewsRequired: Int
//    let message: String
//
//    static let messages: [DescriptionMessage] = [
//        DescriptionMessage(viewsRequired: 100, message: "Congratulations on reaching 100 profile views!"),
//        DescriptionMessage(viewsRequired: 500, message: "Wow, you have 500 profile views! Keep it up!"),
//        DescriptionMessage(viewsRequired: 1000, message: "Amazing! You have 1000 profile views!")
//    ]
//
//    static func getMessage(for views: Int) -> String? {
//        let messages = ProfileViewMessage.messages.filter { $0.viewsRequired == views }
//        return messages.first?.message
//    }
//}
