//
//  AccountView.swift
//  Course
//
//  Created by Kabindra on 1/17/25.
//

import SwiftUI

struct AccountView: View {

    @State private var isDeleted = false
    @State private var isPinned = false

    var body: some View {
        NavigationView {
            List {
                profile
                menu
                links
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Account")
        }
    }

    var profile: some View {
        VStack {
            Image(systemName: "person.crop.circle.fill.badge.checkmark")
                .symbolVariant(.circle.fill)
                .font(.system(size: 32))
                .symbolRenderingMode(.palette)
                .foregroundStyle(.blue, .blue.opacity(0.3))
                .padding()
                .background(Circle().fill(.ultraThinMaterial))
                .background(
                    HexagonView()
                        .offset(x: -50, y: -100)
                )
                .background(
                    BlobView()
                        .offset(x: 200, y: 0)
                        .scaleEffect(0.6)
                )
            Text("Kabindra Karki")
                .font(.title.weight(.semibold))

            HStack {
                Image(systemName: "location")
                    .imageScale(.large)
                Text("Nepal")
                    .foregroundStyle(.secondary)
            }
        }
        .frame(maxWidth: .infinity)
        .padding()
    }

    var menu: some View {
        Section {
            NavigationLink(destination: ContentView()) {
                Label("Setting", systemImage: "gear")
            }

            NavigationLink {
                Text("Billing")
            } label: {
                Label("Billing", systemImage: "creditcard")
            }

            NavigationLink {
                ContentView()
            } label: {
                Label("Help", systemImage: "questionmark")
            }
        }
        .accentColor(Color.primary)
        .listRowSeparatorTint(.green)
        .listRowSeparator(.hidden)
    }

    var links: some View {
        Section {
            if isDeleted == false {
                Link(destination: URL(string: "https://apple.com")!) {
                    HStack {
                        Label("Website", systemImage: "house")
                        Spacer()
                        Image(systemName: "link")
                            .foregroundStyle(.secondary)
                    }
                }
                .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                    deleteButton
                    pinButton
                }
            }

            Link(destination: URL(string: "https://chatgpt.com/")!) {
                HStack {
                    Label("ChatGPT", systemImage: "display")
                    Spacer()
                    Image(systemName: "link")
                        .foregroundStyle(.secondary)
                }
            }
            .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                pinButton
            }
        }
        .accentColor(Color.primary)
        .listRowSeparator(.hidden)
    }
    
    var deleteButton: some View {
        Button {
            isDeleted = true
        } label: {
            Label("Delete", systemImage: "trash")
        }
        .tint(.red)
    }
    
    var pinButton: some View {
        Button {
            isPinned.toggle()
        } label: {
            Label(isPinned ? "Unpin" : "Pin", systemImage: isPinned ? "pin.slash" :"pin")
        }
        .tint(isPinned ? .gray : .yellow)
    }
}

#Preview {
    AccountView()
}
