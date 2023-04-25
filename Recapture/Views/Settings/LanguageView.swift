//
//  LanguageView.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 30/10/2022.
//

import SwiftUI

struct LanguageView: View {
    @State var checklistItems = [
        ChecklistItem(title: "English", subTitle: "English (UK)"),
        ChecklistItem(title: "Français", subTitle: "French"),
        ChecklistItem(title: "Deutsch", subTitle: "German"),
        ChecklistItem(title: "简体中文", subTitle: "Mandarin Chinese"),
        ChecklistItem(title: "한국어", subTitle: "Korean")
    ]
    
    
    
    var body: some View {
        
        List(checklistItems) { item in
            HStack {
                VStack(alignment: .leading, spacing:4) {
                    Text(item.title)
                    Text(item.subTitle)
                        .font(.callout)
                        .foregroundColor(Color.gray)
                }
                Spacer()
                Image(systemName: item.isChecked ? "checkmark" : "square")
                    .foregroundColor(item.isChecked ? .blue : .gray)
                    .onTapGesture {
                        if let index = self.checklistItems.firstIndex(where: { $0.id == item.id }) {
                            self.checklistItems[index].isChecked.toggle()
                        }
                    }
            }
        }
        
        .listStyle(.plain)
        .navigationTitle("Select language")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
                    
                }, label: {
                    Text("Done")
                        .foregroundColor(.blue)
                })
                
            }
        }
    }
}

struct LanguageView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageView()
    }
}




















struct ChecklistItem: Identifiable {
    let id = UUID()
    var title: String
    var subTitle: String
    var isChecked = false
}
