//
//  NotificationView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 20/10/2022.
//

import SwiftUI

struct NotificationView: View {
    @State var notificationItems = [
        NotificationItem(image: "PizzaImage", title: 100, confetti: "🎉", description: "People are noticing. The Pet Project capture is gaining views.", date: Date()),
        NotificationItem(image: "WaterBottle", title: 500, confetti: "🎉", description: "People are noticing. The Pet Project capture is gaining views.", date: Date()),
        NotificationItem(image: "BeachHat", title: 1000, confetti: "🎉", description: "People are noticing. The Pet Project capture is gaining views.", date: Date())
    ]
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM dd"
        return formatter
    }()
    
    
    var body: some View {
        
        VStack {
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
                            Text (item.description)
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
        .navigationTitle("Notifications")
        .navigationBarTitleDisplayMode(.large)

        
        
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
    var description: String
    var date: Date
}
