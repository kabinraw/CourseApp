//
//  TabBar.swift
//  Course
//
//  Created by Kabindra on 1/20/25.
//

import SwiftUI

struct TabBar: View {

    @AppStorage("selectedTab") var selectedTab: Tab = .learnNow
    @State var color: Color = .teal
    @State var tabItemWidth: CGFloat = 0

    var body: some View {
        HStack {
            buttons
        }

        .padding(.horizontal, 8)
        .padding(.top, 14)
        .frame(height: 88, alignment: .top)
        .background(
            .ultraThinMaterial,
            in: RoundedRectangle(cornerRadius: 34, style: .continuous)
        )
        .background(
            background
        )
        .overlay(
            overlay
        )

        .strokeStyle(cornerRadius: 34)
        .frame(maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
    }

    var buttons: some View {
        ForEach(tabItems) { item in
            Button(
                action: {
                    withAnimation(.spring(response: 0.3, dampingFraction: 0.7))
                    {
                        selectedTab = item.tab
                        color = item.color
                    }
                },
                label: {
                    VStack(spacing: 0) {
                        Image(systemName: item.icon)
                            .symbolVariant(.fill)
                            .font(.body.bold())
                            .frame(width: 44, height: 29)
                        Text(item.text)
                            .font(.caption2)
                            .lineLimit(1)
                    }
                    .frame(maxWidth: .infinity)
                }
            )
            .foregroundStyle(selectedTab == item.tab ? .primary : .secondary)
            .blendMode(selectedTab == item.tab ? .overlay : .normal)
            .overlay {
                GeometryReader { proxy in
                    Color.clear.preference(
                        key: TabPrefereceKey.self, value: proxy.size.width)
                }
            }
            .onPreferenceChange(TabPrefereceKey.self) { value in
                tabItemWidth = value
            }
        }
    }

    var background: some View {
        HStack {
            if selectedTab == .library { Spacer() }
            if selectedTab == .explore { Spacer() }
            if selectedTab == .notifications {
                Spacer()
                Spacer()
            }
            Circle().fill(color).frame(width: tabItemWidth)
            if selectedTab == .learnNow { Spacer() }
            if selectedTab == .explore {
                Spacer()
                Spacer()
            }
            if selectedTab == .notifications { Spacer() }
        }
        .padding(.horizontal, 8)
    }
    
    var overlay: some View {
        HStack {
            if selectedTab == .library { Spacer() }
            if selectedTab == .explore { Spacer() }
            if selectedTab == .notifications {
                Spacer()
                Spacer()
            }
            Rectangle()
                .fill(color)
                .frame(width: 28, height: 5)
                .clipShape(RoundedRectangle(cornerRadius: 3))
                .frame(width: tabItemWidth)
                .frame(maxHeight: .infinity, alignment: .top)
            if selectedTab == .learnNow { Spacer() }
            if selectedTab == .explore {
                Spacer()
                Spacer()
            }
            if selectedTab == .notifications { Spacer() }
        }
        .padding(.horizontal, 8)
    }
}

#Preview {
    TabBar()
}
