//
//  CardViewModel.swift
//  Recapture
//
//  Created by Obinna Aguwa on 20/02/2023.
//

import Foundation
//import SwiftUI

class CardViewModel: ObservableObject {
    @Published var projectName = ""
    @Published var selectionForCaptureARView: Int? = nil
    @Published var text = ""
//    @Published var model: CameraViewModel
    
    func setSelectionForCaptureARView() {
        selectionForCaptureARView = projectName == "" ? 0 : 1
    }
    
    func setProjectName(as text: String) {
        projectName = text
    }
    init() {}
   
}
