//
//  Styles.swift
//  Course
//
//  Created by Kabindra on 1/17/25.
//

import SwiftUI

struct StrokeStyles: ViewModifier {

    @Environment(\.colorScheme) var colorScheme
    var cornerRadius: CGFloat

    func body(content: Content) -> some View {
        content.overlay {
            RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                //                .stroke(.black, style: .init(lineWidth: 5, lineCap: .round, lineJoin: .round, miterLimit: .infinity, dash: [50, 20], dashPhase: 20)) /// dash line
                .stroke(
                    .linearGradient(
                        colors: [
                            .white.opacity(colorScheme == .dark ? 0.6 : 0.3),
                            .black.opacity(colorScheme == .dark ? 0.3 : 0.1),
                        ], startPoint: .top, endPoint: .bottom)
                )
                .blendMode(.overlay)
        }
    }
}

extension View {
    public func strokeStyle(cornerRadius: CGFloat = 30) -> some View {
        modifier(StrokeStyles(cornerRadius: cornerRadius))
    }
}
