//
//  ContentView.swift
//  Course
//
//  Created by Kabindra on 1/16/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Spacer()

            Image("Logo 2")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 26, height: 26)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding(8)
                .background(
                    .ultraThinMaterial,
                    in: RoundedRectangle(cornerRadius: 20, style: .continuous)
                )
                .strokeStyle(cornerRadius: 20)

            Text("SwiftUI for iOS 15")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(
                    .linearGradient(
                        colors: [.primary, .primary.opacity(0.3)],
                        startPoint: .topLeading, endPoint: .bottomTrailing)
                )
                .lineLimit(1)

            Text("20 sections - 3 hours".uppercased())
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundStyle(.secondary)

            Text("Build an iOS app for iOS 15 with custom layouts, animations and ...")
            .font(.footnote)
            .multilineTextAlignment(.leading)
            .lineLimit(2)
            .frame(maxWidth: .infinity, alignment: .leading)
            .foregroundStyle(.secondary)

        }
        .padding(.all, 20)
        .padding(.vertical, 20)
        .frame(height: 350)
        .background(
            .ultraThinMaterial,
            in: RoundedRectangle(cornerRadius: 30, style: .continuous)
        )
        //        .clipShape(RoundedRectangle(cornerRadius: 30))
        //        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .shadow(color: Color.shadow.opacity(0.3), radius: 10, x: 0, y: 10)
        .strokeStyle()
        .padding(.horizontal, 20)
        .background(
            Image("Blob 1").offset(x: 250, y: -100)
        )
        .overlay {
            Image("Illustration 5")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 230)
                .offset(x: 32, y: -80)
        }

    }
}

#Preview {
    ContentView()
}
