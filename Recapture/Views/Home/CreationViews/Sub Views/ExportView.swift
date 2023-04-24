//
//  ExportView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 02/11/2022.
//

import SwiftUI

struct ExportView: View {
    var body: some View {
        
        VStack {
            Spacer()
            
            
            
            ZStack {
                
                HStack{
                    QRSheet()
                    Spacer()
                    AnalyticsSheet()
                    Spacer()
                    ProjectInfoSheet()
                    Spacer()
                    WebLinkSheet()
                }
                .padding(.horizontal)
            }
            .frame(maxWidth: .infinity)
            .frame(height: 88)
            .background((Color(#colorLiteral(red: 0.9333333373069763, green: 0.9254902005195618, blue: 0.9607843160629272, alpha: 1))))
            .cornerRadius(8.0)
        }
        
    }
}

struct ExportView_Previews: PreviewProvider {
    static var previews: some View {
        ExportView()
    }
}























struct QRSheet: View {
    @State var isSheetShown = false
    
    var body: some View {
        Button {
            isSheetShown = true
        } label: {
            VStack(spacing: 4.0) {
                Image(systemName: "qrcode")
                Text("QRCode")
            }
        }
        .sheet(isPresented: $isSheetShown, content: {
            if #available(iOS 16.0, *) {
                QRCodeView()
                    .presentationDetents([.fraction(0.8), .medium])
            } else {
                // Fallback on earlier versions
            }
        })
    }
}



struct ProjectInfoSheet: View {
    @State var isSheetShown = false
    
    var body: some View {
        Button {
            isSheetShown = true
        } label: {
            VStack(spacing: 4.0) {
                Image(systemName: "info.circle")
                Text("Project Info")
            }
        }
        .sheet(isPresented: $isSheetShown, content: {
            if #available(iOS 16.0, *) {
                ProjectInfoView()
                    .presentationDetents([.fraction(0.8), .medium])
            } else {
                // Fallback on earlier versions
            }
        })
    }
}



struct AnalyticsSheet: View {
    @State var isSheetShown = false
    
    var body: some View {
        Button {
            isSheetShown = true
        } label: {
            VStack(spacing: 4.0) {
                Image(systemName: "chart.bar")
                Text("Analytics")
            }
        }
        .sheet(isPresented: $isSheetShown, content: {
            if #available(iOS 16.0, *) {
                AnalyticsView()
                    .presentationDetents([.fraction(0.8), .large])
            } else {
                // Fallback on earlier versions
            }
        })
    }
}





struct WebLinkSheet: View {
    @State var isSheetShown = false
    
    var body: some View {
        Button {
            isSheetShown = true
        } label: {
            VStack(spacing: 4.0) {
                Image(systemName: "link")
                Text("Web Link")
            }
        }
        .sheet(isPresented: $isSheetShown, content: {
            if #available(iOS 16.0, *) {
                WebLinkView()
                    .presentationDetents([.fraction(0.8), .medium])
            } else {
                // Fallback on earlier versions
            }
        })
    }
}
