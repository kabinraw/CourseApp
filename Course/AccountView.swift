//
//  AccountView.swift
//  Course
//
//  Created by Kabindra on 1/17/25.
//

import SwiftUI

struct AccountView: View {
    
    @State private var isDeleted = false
    
    var body: some View {
        NavigationView {
            List {
                VStack {
                    Image(systemName: "person.crop.circle.fill.badge.checkmark")
                        .symbolVariant(.circle.fill)
                        .font(.system(size: 32))
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(.blue, .blue.opacity(0.3))
                        .padding()
                        .background(Circle().fill(.ultraThinMaterial))
                        .background(
                            Image(systemName: "hexagon")
                                .symbolVariant(.fill)
                                .foregroundStyle(.blue)
                                .font(.system(size: 200))
                                .offset(x: -50, y: -100)

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
                            Button {
                                isDeleted = true
                            } label: {
                                Label("Delete", systemImage: "trash")
                            }
                            .tint(.red)
                            Button {
                                
                            } label: {
                                Label("Pin", systemImage: "pin")
                            }
                            .tint(.yellow)
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
                }
                .accentColor(Color.primary)
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Account")
        }
    }
}

#Preview {
    AccountView()
}
