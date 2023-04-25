//
//  Tutorial.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 20/10/2022.
//

import SwiftUI

struct TutorialView: View {
    @State private var segmentedTutorial = 0
    
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Picker("", selection: $segmentedTutorial) {
                Text("Video Tutorial").tag(0)
                Text("FAQ").tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            if (segmentedTutorial == 0) {
                VideoTutorials()
            }
            if (segmentedTutorial == 1) {
                FAQView()
            }
            
            
            
            
        }
        .navigationTitle("Help Center")
        .navigationBarTitleDisplayMode(.large)


    }
    
}


struct Tutorial_Previews: PreviewProvider {
    static var previews: some View {
        TutorialView()
    }
}























struct VideoTutorials:View {
    @State private var revealDetails = false
    
    var body: some View {
        
        List {
            ForEach(0..<5) { item in
                
                //ImageAR Preview
                HStack {
                    Image(systemName: "image")
                        .frame(width: 72, height: 72)
                        .background(Color(.systemGray5))
                        .cornerRadius(12)
                    
                    //Project Details
                    VStack(alignment: .leading, spacing: 4.0) {
                        Text("Introduction to Recapture AR and all other things attached to it")
                            .font(.body)
                            .fontWeight(.semibold)
                            .lineLimit(2)
                        
                        HStack {
                            Image(systemName: "play")
                            Text ("102 Views")
                        }
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    }
                    .padding(.vertical)
                    
                    Spacer()
                    Image(systemName: "arrow.up.right")
                        .foregroundColor(.blue)
                }
            }
            
        }
        .listStyle(.plain)

    }
}
























struct FAQView:View {
    @State private var revealDetails = false
    
    var body: some View {
        
        ScrollView{
            DisclosureGroup("How many captures can i carry out at a time", isExpanded: $revealDetails) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Lorem ipsum dolor sit amet consectetur. Consectetur lectus suspendisse amet habitasse sit. Vitae amet orci sagittis amet. Tincidunt egestas molestie facilisis at et vel blandit turpis. Mauris sit scelerisque vehicula varius vel in. Est malesuada lectus aenean suscipit. Nisl interdum pellentesque euismod et ultrices vulputate. Sit amet facilisis vel elementum tincidunt enim velit. Tortor ut tristique semper imperdiet in erat et. Venenatis aenean eget nibh volutpat adipiscing feugiat sagittis. Sollicitudin quisque libero sed leo egestas suspendisse nam.")
                        .font(.callout)
                    Button("Close Accordion") {
                        revealDetails.toggle()
                    }
                }
                .padding(.top)
                
            }
            
            
            
            DisclosureGroup("How many captures can i carry out at a time", isExpanded: $revealDetails) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Lorem ipsum dolor sit amet consectetur. Consectetur lectus suspendisse amet habitasse sit. Vitae amet orci sagittis amet. Tincidunt egestas molestie facilisis at et vel blandit turpis. Mauris sit scelerisque vehicula varius vel in. Est malesuada lectus aenean suscipit. Nisl interdum pellentesque euismod et ultrices vulputate. Sit amet facilisis vel elementum tincidunt enim velit. Tortor ut tristique semper imperdiet in erat et. Venenatis aenean eget nibh volutpat adipiscing feugiat sagittis. Sollicitudin quisque libero sed leo egestas suspendisse nam.")
                        .font(.callout)
                    Button("Close Accordion") {
                        revealDetails.toggle()
                    }
                }
                .padding(.top)
                
            }
            
            
            DisclosureGroup("How many captures can i carry out at a time", isExpanded: $revealDetails) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Lorem ipsum dolor sit amet consectetur. Consectetur lectus suspendisse amet habitasse sit. Vitae amet orci sagittis amet. Tincidunt egestas molestie facilisis at et vel blandit turpis. Mauris sit scelerisque vehicula varius vel in. Est malesuada lectus aenean suscipit. Nisl interdum pellentesque euismod et ultrices vulputate. Sit amet facilisis vel elementum tincidunt enim velit. Tortor ut tristique semper imperdiet in erat et. Venenatis aenean eget nibh volutpat adipiscing feugiat sagittis. Sollicitudin quisque libero sed leo egestas suspendisse nam.")
                        .font(.callout)
                    Button("Close Accordion") {
                        revealDetails.toggle()
                    }
                }
                .padding(.top)
                
            }
            
            
            
            DisclosureGroup("How many captures can i carry out at a time", isExpanded: $revealDetails) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Lorem ipsum dolor sit amet consectetur. Consectetur lectus suspendisse amet habitasse sit. Vitae amet orci sagittis amet. Tincidunt egestas molestie facilisis at et vel blandit turpis. Mauris sit scelerisque vehicula varius vel in. Est malesuada lectus aenean suscipit. Nisl interdum pellentesque euismod et ultrices vulputate. Sit amet facilisis vel elementum tincidunt enim velit. Tortor ut tristique semper imperdiet in erat et. Venenatis aenean eget nibh volutpat adipiscing feugiat sagittis. Sollicitudin quisque libero sed leo egestas suspendisse nam.")
                        .font(.callout)
                    Button("Close Accordion") {
                        revealDetails.toggle()
                    }
                }
                .padding(.top)
                
            }
            
            
            
            DisclosureGroup("How many captures can i carry out at a time", isExpanded: $revealDetails) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Lorem ipsum dolor sit amet consectetur. Consectetur lectus suspendisse amet habitasse sit. Vitae amet orci sagittis amet. Tincidunt egestas molestie facilisis at et vel blandit turpis. Mauris sit scelerisque vehicula varius vel in. Est malesuada lectus aenean suscipit. Nisl interdum pellentesque euismod et ultrices vulputate. Sit amet facilisis vel elementum tincidunt enim velit. Tortor ut tristique semper imperdiet in erat et. Venenatis aenean eget nibh volutpat adipiscing feugiat sagittis. Sollicitudin quisque libero sed leo egestas suspendisse nam.")
                        .font(.callout)
                    Button("Close Accordion") {
                        revealDetails.toggle()
                    }
                }
                .padding(.top)
                
            }
            
            
            
            DisclosureGroup("How many captures can i carry out at a time", isExpanded: $revealDetails) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Lorem ipsum dolor sit amet consectetur. Consectetur lectus suspendisse amet habitasse sit. Vitae amet orci sagittis amet. Tincidunt egestas molestie facilisis at et vel blandit turpis. Mauris sit scelerisque vehicula varius vel in. Est malesuada lectus aenean suscipit. Nisl interdum pellentesque euismod et ultrices vulputate. Sit amet facilisis vel elementum tincidunt enim velit. Tortor ut tristique semper imperdiet in erat et. Venenatis aenean eget nibh volutpat adipiscing feugiat sagittis. Sollicitudin quisque libero sed leo egestas suspendisse nam.")
                        .font(.callout)
                    Button("Close Accordion") {
                        revealDetails.toggle()
                    }
                }
                .padding(.top)
                
            }
            
            
            
            DisclosureGroup("How many captures can i carry out at a time", isExpanded: $revealDetails) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Lorem ipsum dolor sit amet consectetur. Consectetur lectus suspendisse amet habitasse sit. Vitae amet orci sagittis amet. Tincidunt egestas molestie facilisis at et vel blandit turpis. Mauris sit scelerisque vehicula varius vel in. Est malesuada lectus aenean suscipit. Nisl interdum pellentesque euismod et ultrices vulputate. Sit amet facilisis vel elementum tincidunt enim velit. Tortor ut tristique semper imperdiet in erat et. Venenatis aenean eget nibh volutpat adipiscing feugiat sagittis. Sollicitudin quisque libero sed leo egestas suspendisse nam.")
                        .font(.callout)
                    Button("Close Accordion") {
                        revealDetails.toggle()
                    }
                }
                .padding(.top)
                
            }
            
        }
        .padding(.horizontal)
    }
    
}


