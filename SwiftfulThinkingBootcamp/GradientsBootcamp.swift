//
//  GradientsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mateusz on 05/11/2026.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                LinearGradient(
//                    gradient: Gradient(colors: [Color(uiColor: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)), Color(uiColor: #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1))]),
//                    startPoint: .topLeading,
//                    endPoint: .trailing )
                
//                RadialGradient(
//                    colors: [Color(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)), Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))],
//                    center: .topLeading,
//                    startRadius: 5,
//                    endRadius: 320)
                
                AngularGradient(colors: [Color(#colorLiteral(red: 0.5787474513, green: 0.3215198815, blue: 0, alpha: 1)), Color(#colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1))],
                                center: .topLeading,
                                angle: .degrees(225))
            )
            .frame(width: 300, height: 200)
            .shadow(color: Color.black, radius: 10)
    }
}

#Preview {
    GradientsBootcamp()
}
