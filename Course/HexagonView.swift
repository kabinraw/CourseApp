//
//  HexagonView.swift
//  Course
//
//  Created by Kabindra on 1/19/25.
//

import SwiftUI

struct HexagonView: View {
    var body: some View {
        Canvas { context, size in
            context.draw(Text("DesignCode"), at: CGPoint(x: 50, y: 10))
        }
    }
}

#Preview {
    HexagonView()
}
