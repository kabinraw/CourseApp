//
//  Tab.swift
//  Course
//
//  Created by Kabindra on 1/20/25.
//

import Foundation

struct TabItem: Identifiable {
    var id = UUID()
    var text: String
    var icon: String
}

var tabItems = [
    TabItem(text: "Learn now", icon: "house"),
    TabItem(text: "Explore", icon: "magnifyingglass"),
    TabItem(text: "Notifications", icon: "bell"),
    TabItem(text: "Library", icon: "rectangle.stack")
]
