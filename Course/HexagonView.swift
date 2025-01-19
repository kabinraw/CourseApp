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
//            context.draw(Text("DesignCode").font(.largeTitle), at: CGPoint(x: 50, y: 10))
//            context.fill(Path(ellipseIn: CGRect(x: 0, y: 0, width: 100, height: 100)), with: .color(.red))
            context.draw(Image("Blob 1"), in: CGRect(x: 0, y: 0, width: 200, height: 200))
            context.draw(Image(systemName: "hexagon.fill"), in: CGRect(x: 0, y: 0, width: size.width, height: size.height))
            
        }
        .frame(width: 200, height: 210)
        .foregroundStyle(.linearGradient(colors: [.pink, .blue], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}

#Preview {
    HexagonView()
}
