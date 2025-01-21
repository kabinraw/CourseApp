//
//  ContentView.swift
//  Course
//
//  Created by Kabindra on 1/16/25.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("selectedTab") var selectedTab: Tab = .learnNow
    
    var body: some View {
        ZStack(alignment: .bottom) {

            Group {
                switch selectedTab {
                case .learnNow:
                    HomeView()
                case .explore:
                    AccountView()
                case .notifications:
                    AccountView()
                case .library:
                    AccountView()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            TabBar()
        }

    }
}

#Preview {
    ContentView()
}
