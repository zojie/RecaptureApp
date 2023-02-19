//
//  View+Extension.swift
//  Recapture
//
//  Created by Obinna Aguwa on 19/02/2023.
//

import SwiftUI

extension View {
    //  Alert Textfield
    func alertTextField(title: String,
                        message: String,
                        hintText: String,
                        primaryTitle: String,
                        secondaryTitle: String,
                        primaryAction: @escaping (String) -> (),
                        secondaryAction: @escaping ()->()
    ) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addTextField { field in
            field.placeholder = hintText
        }
        
        alert.addAction(.init(title: secondaryTitle, style: .cancel, handler: { _ in
            secondaryAction()
        }))
        
        alert.addAction(.init(title: primaryTitle, style: .default, handler: { _ in
            if let text = alert.textFields?[0].text {
                primaryAction(text)
            } else {
                primaryAction("")
            }
        }))
        
        // MARK: Presenting Alert
        rootViewController().present(alert, animated: true)
    }
    
    // MARK: Root View Controller
    func rootViewController() -> UIViewController {
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            return .init()
        }
        
        guard let root = screen.windows.first?.rootViewController else {
            return .init()
        }
        
        return root
    }
}
