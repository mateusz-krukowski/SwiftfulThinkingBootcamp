//
//  ShapesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mateusz on 31/10/2026.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
//        .fill(Color.brown)
//        .foregroundStyle(Color.pink)
//        .stroke(Color.red, lineWidth: 12)
//        .padding(20)
//            .stroke(Color.orange,
//                    style: StrokeStyle(
//                        lineWidth: 20,
//                        lineCap: .butt,
//                        dash: [10]
//                        )
//                    )
//            .trim(from: -1, to: 0.7)
//            .stroke(lineWidth:10)
        
//        Ellipse()
//        Capsule(style: .circular)
        RoundedRectangle(cornerRadius: 50)
            .trim(from: 0.4, to: 1.0)
            .fill(Color.green)
            .frame(width: 300, height: 200, alignment: .center)
        
    }
}

#Preview {
    ShapesBootcamp()
}
