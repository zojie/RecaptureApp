//
//  ProjectListView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 17/10/2022.
//

import SwiftUI

struct ProjectListView: View {
    @State private var segmentedProject = 0
    
    
    var body: some View {
        
        VStack {
            
            Picker("", selection: $segmentedProject) {
                Text("Projects").tag(0)
                Text("Drafts").tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            
                if (segmentedProject == 0) {
                    ActiveProjects()
                }
                if (segmentedProject == 1) {
                    EmptyProject()
                }
            
            
            
        }
        
    }
}


struct ProjectListView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectListView()
    }
}
























//Data Model
struct ProjectItem: Identifiable {
    let id = UUID()
    var image: String
    var title: String
    var created: Date
    var lastEdit: Date
    var projectSize: Int
    var imageCount: Int
}












struct ActiveProjects: View {
    @State var projectItems = [
        ProjectItem(image: "PizzaImage", title: "Peperoni Crusted Pizza", created: Date(), lastEdit: Date(), projectSize: 46, imageCount: 26),
        ProjectItem(image: "WaterBottle", title: "Gym Water Bottle", created: Date(), lastEdit: Date(), projectSize: 32, imageCount: 30),
        ProjectItem(image: "Nivea", title: "Nivea Body Cream", created: Date(), lastEdit: Date(), projectSize: 18, imageCount: 42),
        ProjectItem(image: "BeachHat", title: "Beach Hat", created: Date(), lastEdit: Date(), projectSize: 18, imageCount: 42)
    ]
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM d, HH:mm"
        return formatter
    }()
    
    
    @State var isSheetShown = false
    
    var body: some View {
        //Project List
        List(projectItems) { item in
            Button {
                //
            } label: {
                HStack {
                    Image(item.image)
                        .resizable()
                        .frame(width: 100, height: 100)
                        .cornerRadius(12)
                    
                    //Project Details
                    VStack(alignment: .leading, spacing: 4) {
                        Text(item.title)
                            .font(.body)
                            .fontWeight(.semibold)
                            .lineLimit(2)
                        
                        
                        VStack(alignment: .leading) {
                            Text ("Created \(dateFormatter.string(from: item.created))")
                                .font(.subheadline)
                            Text ("Last Edited \(dateFormatter.string(from: item.lastEdit))")
                                .font(.subheadline)
                            
                        }
                        .font(.footnote)
                        .foregroundColor(.gray)
                        
                        
                        HStack(spacing: 4) {
                            Text ("\(item.projectSize)MB")
                            Text ("•")
                            Text ("\(item.imageCount) Images")
                        }
                        .font(.footnote)
                        .foregroundColor(.gray)
                    }
                    .padding(.vertical)
//                    WelcomeCard(numberOfProject: projectItems.count)
                    
                    Spacer()
                    
                    //More Options
                    ProjectActions()
                }
            }
            
            .swipeActions(edge: .leading) {
                    Button { isSheetShown = true } label: {
                            Label("Share QR", systemImage: "qrcode")
                        }
                        .tint(.blue)
                        .sheet(isPresented: $isSheetShown, content: {
                            if #available(iOS 16.0, *) {
                                QRCodeView()
                                    .presentationDetents([.fraction(0.8), .medium])
                            } else {
                                // Fallback on earlier versions
                            }
                        })
                    }

                .swipeActions(edge: .trailing) {
                        Button(role: .destructive) {} label: {
                            Label("Delete", systemImage: "trash")
                        }
                    }



                .contextMenu {
                    Button {
                        //Do something here
                    } label: {
                        Label("Share", systemImage: "square.and.arrow.up")
                    }

                    Button {
                        //Do something here
                    } label: {
                        Label("Get Info", systemImage: "info.circle")
                    }

                    Button {
                        //Do something here
                    } label: {
                        Label("Rename Project", systemImage: "pencil")
                    }

                    Button {
                        //Do something here
                    } label: {
                        Label("AR View", systemImage: "arkit")
                    }

                    Divider()

                    Button {
                        //Do something here
                    } label: {
                        Label("QR Code", systemImage: "qrcode")
                    }

                    Button {
                        //Do something here
                    } label: {
                        Label("Analytics", systemImage: "chart.bar")
                    }

                    Button {
                        //Do something here
                    } label: {
                        Label("Web Link", systemImage: "link")
                    }

                    Divider()

                    Button(role: .destructive) {
                        //Do something here
                    } label: {
                        Label("Delete", systemImage: "trash")
                    }
                }
        }
        .padding(.top, -16.0)
        .listStyle(.plain)

    }
    
}















struct ProjectActions: View {
    var body: some View {
        
        Menu {
                        
            //Share
            Button {
                //Do something here
            } label: {
                Label("Share", systemImage: "square.and.arrow.up")
            }
            
            //Get Info
            Button {
                //Do something here
            } label: {
                Label("Get Info", systemImage: "info.circle")
            }
            
            //Rename Project
            Button {
                //Do something here
            } label: {
                Label("Rename Project", systemImage: "pencil")
            }
            
            //AR View
            Button {
                //Do something here
            } label: {
                Label("AR View", systemImage: "arkit")
            }
            
            Divider()
            
            //QR Code
            Button {
                //Do something here
            } label: {
                Label("QR Code", systemImage: "qrcode")
            }
            
            //Analytics
            Button {
                //Do something here
            } label: {
                Label("Analytics", systemImage: "chart.bar")
            }
            
            //Web Link
            Button {
                //Do something here
            } label: {
                Label("Web Link", systemImage: "link")
            }
            
            Divider()
            
            //Delete
            Button(role: .destructive) {
                //Do something here
            } label: {
                Label("Delete", systemImage: "trash")
            }
          
            
        } label: {
            Label("", systemImage: "ellipsis")
        }
        .padding(.trailing, -16.0)
        .foregroundColor(/*@START_MENU_TOKEN@*/.gray/*@END_MENU_TOKEN@*/)
    }
}











struct EmptyProject: View {
    
    var body: some View{
        
        ScrollView {
            VStack(alignment: .center, spacing: 24) {
                ZStack {
                    Rectangle()
                        .foregroundColor(Color(.systemGray5))
                        .frame(width: 80, height: 80)
                    .mask(Circle())
                    Image(systemName: "arkit")
                        .resizable()
                        .frame(width: 35, height: 40)
                        
                }
                VStack(spacing: 12.0) {
                    Text("No Active Project")
                        .fontWeight(.medium)
                    Text("After you process your photo captures, your project will be displayed here. To begin, simply tap on the purple button above to get started.")
                        .font(.callout)
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                }
            }
            .padding(.top, 42.0)
        }
    }
    
}
