//
//  CardView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 20/10/2022.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        HStack {
            CardViewBlock()
        }
    }
}


struct CardViewBlock: View {
    @State private var projectName = ""
    @State var selection: Int? = nil
    var body: some View {
        
        //        Add new project card
        
        
        NavigationLink(destination: CaptureARView(), tag: 1, selection: $selection) {
            Button(action: {
                //            isPresentNameProjectAlert = true
                alertTextField(title: "Name Project", message: "", hintText: "Untitled", primaryTitle: "Continue", secondaryTitle: "Cancel") { text in
                    projectName = text
                    //                isProjectNamed = true
                    self.selection = 1
                } secondaryAction: {
                    print("Cancelled")
                }
                
            }, label: {
                
                
                VStack(alignment: .leading, spacing: 8) {
                    Image(systemName: "plus")
                        .font(.system(size: 24, weight: .medium))
                    Text("New Project")
                        .font(.headline)
                        .fontWeight(.bold)
                    Text("Create new AR model with only your camera")
                    
                    
                    
                }
                
            })
            .foregroundColor(.white)
            .padding()
            .frame(width: 212, height: 162)
            .background(LinearGradient(
                gradient: Gradient(stops: [
                    .init(color: Color(#colorLiteral(red: 0, green: 0.47843137383461, blue: 1, alpha: 1)), location: 0),
                    .init(color: Color(#colorLiteral(red: 0.5607843399047852, green: 0, blue: 0.9333333373069763, alpha: 1)), location: 1)]),
                startPoint: UnitPoint(x: 0.062499975840183686, y: 0.07031251435910296),
                endPoint: UnitPoint(x: 0.7890624911997284, y: 0.8281249745741668)))
            .cornerRadius(12)
        }
        
        //        Other card
        VStack(alignment: .leading, spacing: 8) {
            Text("30")
                .font(.title3)
                .fontWeight(.bold)
            Text("Projects created")
            Text("MASTER")
                .font(.caption)
                .fontWeight(.semibold)
        }
        .foregroundColor(.white)
        .padding(4.0)
        .frame(width: 115, height: 162)
        .background(.gray)
        .cornerRadius(12)
    }
}













struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
