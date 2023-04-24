//
//  HeaderBar.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 17/10/2022.
//

import SwiftUI

struct WelcomeCard: View {
    @StateObject var cardViewModel = CardViewModel()
    
    var body: some View {
        VStack(spacing:24) {
            
            //Upgrade
//            Button {
//                //Do something here
//            } label: {
//                Text ("Upgrade Plan")
//                    .foregroundColor(Color.blue)
//                    .padding()
//
//            }
            
            //HEADER
            HStack {
                VStack(alignment: .leading) {
                    Text("Welcome to")
                        .font(.system(size: 22, weight: .bold))
                        .foregroundColor(Color.gray)
                        .tracking(-0.88)
                    Text("Ehizojie’s Reality Library")
                        .font(.system(size: 22, weight: .bold))
                        .tracking(-0.44)
                }
                Spacer()
                
//                Image(systemName: "person.fill")
//                    .frame(width: 56, height: 56)
//                    .background(Color(#colorLiteral(red: 0.886274516582489, green: 0.886274516582489, blue: 0.8980392217636108, alpha: 1)))
//                    .mask(Circle())
            }
            .padding([.top, .leading, .trailing])
            
            
            
            
            //CARDS
            HStack {
                NavigationLink(destination: CaptureARView(projectName: $cardViewModel.projectName), tag: 1, selection: $cardViewModel.selectionForCaptureARView) {
                    Button(action: {
                        alertTextField(title: "Project Name", message: "", hintText: "Untitled", primaryTitle: "Continue", secondaryTitle: "Cancel") { text in
                            cardViewModel.setProjectName(as: text)
                            cardViewModel.setSelectionForCaptureARView()
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
                            Text("Create 3D AR models with only your camera")
                                .multilineTextAlignment(.leading)
                        }
                        .padding(.horizontal)
                        
                    })
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width * 0.6, height: 162)
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
                .padding(4.0)
                .frame(width: UIScreen.main.bounds.width * 0.3, height: 162)
                .background(Color(.systemGray5))
                .cornerRadius(12)
            }
            
            
        }
    }
}

struct WelcomeCard_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeCard()
    }
}
