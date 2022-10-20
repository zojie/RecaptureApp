//
//  HeaderData.swift
//  Recapture
//
//  Created by Ehizojie Ihayere on 20/10/2022.
//

import Foundation
import SwiftUI

struct HeaderData {
    var viewName: String
    var subText: String
    var avatar = Image(systemName: "person.fill")
    var upgrade = Image(systemName: "person.fill")
}

var header = [
    HeaderData(viewName: "Welcome to", subText: "Ehizojie’s Reality Library"),
    HeaderData(viewName: "Notification", subText: "Your project activities"),
    HeaderData(viewName: "Tutorials", subText: "Lets see how its done"),
    HeaderData(viewName: "Settings", subText: "Manage your account"),
]
