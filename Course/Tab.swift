//
//  Tab.swift
//  Course
//
//  Created by Kabindra on 1/20/25.
//

import SwiftUI

struct TabItem: Identifiable {
    var id = UUID()
    var text: String
    var icon: String
    var tab: Tab
    var color: Color
}

var tabItems = [
    TabItem(text: "Learn now", icon: "house", tab: .learnNow, color: .teal),
    TabItem(text: "Explore", icon: "magnifyingglass", tab: .explore, color: .blue),
    TabItem(text: "Notifications", icon: "bell", tab: .notifications, color: .red),
    TabItem(text: "Library", icon: "rectangle.stack", tab: .library, color: .green)
]

enum Tab: String {
    case learnNow
    case explore
    case notifications
    case library
}
