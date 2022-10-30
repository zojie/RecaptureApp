//
//  SubscriptionView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 29/10/2022.
//

import SwiftUI

struct SubscriptionView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 24) {
                Text("Billed Monthly")
                    .fontWeight(.semibold)
                
                //Free plan card
                VStack(alignment: .leading, spacing: 16) {
                    Text("Free Plan")
                        .fontWeight(.semibold)
                    HStack {
                        Text("$0")
                            .font(.title)
                            .fontWeight(.bold)
                        Text("Active plan")
                            .font(.callout)
                            .frame(width: 96, height: 24)
                            .background(.white .opacity(0.4))
                            .cornerRadius(4)
                    }
                    HStack {
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                        Text("2 Projects")
                        Spacer()
                    }
                    HStack {
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                        Text("QR Code")
                        Spacer()
                    }
                    HStack {
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                        Text("Text Points")
                        Spacer()
                    }
                }
                .padding()
                .foregroundColor(.white)
                .frame(width: 343, height: 224)
                .background(.yellow)
                .cornerRadius(12)
                
                
                //Paid plan card
                VStack(alignment: .leading, spacing: 16) {
                    Text("Pro Plan")
                        .fontWeight(.semibold)
                    HStack {
                        Text("$59")
                            .font(.title)
                            .fontWeight(.bold)
                    }
                    Text("Everything in free plus")
                    HStack {
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                        Text("Unlimited projects")
                        Spacer()
                    }
                    HStack {
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                        Text("Analytics")
                        Spacer()
                    }
                    HStack {
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                        Text("Text Points")
                        Spacer()
                    }
                    HStack {
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                        Text("Custom QR Codes")
                        Spacer()
                    }
                    HStack {
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                        Text("Embed Web Links")
                        Spacer()
                    }
                    HStack {
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                        Text("Custom Domain")
                        Spacer()
                    }
                    Button("Get started 7 days free trial") {
                        //Do something here
                    }
                    .foregroundColor(.black)
                    .frame(width: 310, height: 50)
                    .background(.white)
                    .cornerRadius(10)
                    
                }
                .foregroundColor(.white)
                .padding()
                .frame(width: 343, height: 436)
                .background(LinearGradient(
                    gradient: Gradient(stops: [
                        .init(color: Color(#colorLiteral(red: 0, green: 0.47843137383461, blue: 1, alpha: 1)), location: 0),
                        .init(color: Color(#colorLiteral(red: 0.5607843399047852, green: 0, blue: 0.9333333373069763, alpha: 1)), location: 1)]),
                    startPoint: UnitPoint(x: 0.062499975840183686, y: 0.07031251435910296),
                    endPoint: UnitPoint(x: 0.7890624911997284, y: 0.8281249745741668)))
                .cornerRadius(12)
            }
            .navigationTitle("Subscription")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct SubscriptionView_Previews: PreviewProvider {
    static var previews: some View {
        SubscriptionView()
    }
}
