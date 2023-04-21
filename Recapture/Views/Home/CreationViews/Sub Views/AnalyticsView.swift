//
//  AnalyticsView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 02/11/2022.
//

import SwiftUI

struct AnalyticsView: View {
    @State private var date = Date()
    
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading, spacing: 42.0) {
                    
                    //Date Picker
                    HStack {
                        Text("Select date")
                            .fontWeight(.semibold)
                        Spacer()
                        DatePicker(
                                "",
                                selection: $date,
                                displayedComponents: [.date]
                            )
                    }
                    
                    //Total Views
                    VStack(alignment: .leading, spacing: 4) {
                        Text("10K")
                            .font(.title2)
                            .fontWeight(.semibold)
                        Text("Number of Views")
                            .font(.callout)
                            .foregroundColor(.gray)
                    }
                    
                    //Views per device type
                    VStack(alignment: .leading) {
                        
                        Text("DEVICE TYPE")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .foregroundColor(.gray)
                        
                        //iOS
                        HStack {
                            Image("OnboardingImage")
                                .frame(width: 32.0, height: 32.0)
                                .mask(Circle())
                            VStack(alignment: .leading, spacing: 4) {
                                Text("1,250 views")
                                    .fontWeight(.semibold)
                                Text("iOS")
                                    .font(.callout)
                                    .foregroundColor(.gray)
                            }
                        }
                        
                        //Android
                        HStack {
                            Image("OnboardingImage")
                                .frame(width: 32.0, height: 32.0)
                                .mask(Circle())
                            VStack(alignment: .leading, spacing: 4) {
                                Text("1,250 views")
                                    .fontWeight(.semibold)
                                Text("Android")
                                    .font(.callout)
                                    .foregroundColor(.gray)
                            }
                        }
                        
                        //Web
                        HStack {
                            Image("OnboardingImage")
                                .frame(width: 32.0, height: 32.0)
                                .mask(Circle())
                            VStack(alignment: .leading, spacing: 4) {
                                Text("1,250 views")
                                    .fontWeight(.semibold)
                                Text("Web & Others")
                                    .font(.callout)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                    
                    //Top Locations
                    VStack(alignment: .leading) {
                        
                        Text("TOP LOCATIONS")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .foregroundColor(.gray)
                        
                        //Location 1
                        HStack {
                            Image("OnboardingImage")
                                .frame(width: 32.0, height: 32.0)
                                .mask(Circle())
                            VStack(alignment: .leading, spacing: 4) {
                                Text("1,250 views")
                                    .fontWeight(.semibold)
                                Text("Lagos, Nigeria")
                                    .font(.callout)
                                    .foregroundColor(.gray)
                            }
                        }
                        
                        //Location 2
                        HStack {
                            Image("OnboardingImage")
                                .frame(width: 32.0, height: 32.0)
                                .mask(Circle())
                            VStack(alignment: .leading, spacing: 4) {
                                Text("1,250 views")
                                    .fontWeight(.semibold)
                                Text("San Franciso, USA")
                                    .font(.callout)
                                    .foregroundColor(.gray)
                            }
                        }
                        
                        //Location 3
                        HStack {
                            Image("OnboardingImage")
                                .frame(width: 32.0, height: 32.0)
                                .mask(Circle())
                            VStack(alignment: .leading, spacing: 4) {
                                Text("1,250 views")
                                    .fontWeight(.semibold)
                                Text("Cape Town, South Africa")
                                    .font(.callout)
                                    .foregroundColor(.gray)
                            }
                        }
                        
                        //Location 4
                        HStack {
                            Image("OnboardingImage")
                                .frame(width: 32.0, height: 32.0)
                                .mask(Circle())
                            VStack(alignment: .leading, spacing: 4) {
                                Text("1,250 views")
                                    .fontWeight(.semibold)
                                Text("Abuja, Nigeria")
                                    .font(.callout)
                                    .foregroundColor(.gray)
                            }
                        }
                        
                        //Location 5
                        HStack {
                            Image("OnboardingImage")
                                .frame(width: 32.0, height: 32.0)
                                .mask(Circle())
                            VStack(alignment: .leading, spacing: 4) {
                                Text("1,250 views")
                                    .fontWeight(.semibold)
                                Text("Benin City, Nigeria")
                                    .font(.callout)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                    
                }
            .padding()
        }
        .offset(y: 24)

        
    }
}

struct AnalyticsView_Previews: PreviewProvider {
    static var previews: some View {
        AnalyticsView()
    }
}
