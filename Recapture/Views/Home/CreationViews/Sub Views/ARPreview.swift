//
//  ARPreview.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 24/04/2023.
//

import SwiftUI

struct ARPreview: View {
    var body: some View {
        
        TabView {
            
            ARModelView()
                .tabItem {
                    Image(systemName: "cube.fill")
                    Text("Model")
                }
            
            QRCodeView()
                .tabItem {
                    Image(systemName: "qrcode")
                    Text("QRCode")
                }
            
            AnalyticsView()
                .tabItem {
                    Image(systemName: "chart.bar")
                    Text("Analytics")
                }
            
            ExportView()
                .tabItem {
                    Image(systemName: "square.and.arrow.up.fill")
                    Text("Export")
                }
            
            ProjectInfoView()
                .tabItem {
                    Image(systemName: "info.circle")
                    Text("Project Info")
                }
            
        }
        .onAppear {
            let tabBarAppearance = UITabBarAppearance()
            tabBarAppearance.configureWithOpaqueBackground()
            UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
        }
    
        .navigationBarItems(leading:
                                VStack(alignment: .leading, spacing: 4) {
            Text("Untitled Project")
                .fontWeight(.semibold)
            HStack(spacing: 4) {
                Text ("18MB")
                Text ("•")
                Text ("42 Images")
            }
            .font(.callout)
            .foregroundColor(.gray)
            
        }
        )
        
        //Test toolbar
        .toolbar {
            
            ToolbarItemGroup(placement: .navigationBarTrailing) {
                
                NavigationLink(destination: WalletView(), label: {
                    Image(systemName: "ellipsis")
                        .foregroundColor(.blue)
                })
                
                NavigationLink(destination: WalletView(), label: {
                    Image(systemName: "trash")
                        .foregroundColor(.red)
                })
            }
            
        }
        
    }
}

struct ARPreview_Previews: PreviewProvider {
    static var previews: some View {
        ARPreview()
    }
}
