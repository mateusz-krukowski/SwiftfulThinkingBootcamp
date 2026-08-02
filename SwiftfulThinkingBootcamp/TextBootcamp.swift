//
//  TextBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mateusz on 01/08/2026.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        
        Text("Hello Chris, How are you? How are you doing today? I am writing this for no reason")
        .baselineOffset(10)
        .kerning(2)

//        .fontWeight(.heavy)
//
//        .font(.system(size: 50, weight: .bold, design: .serif))
        .multilineTextAlignment(.leading)
        .foregroundStyle(.black)
        .background(Color.yellow)
        .frame(width: 300, height: 200, alignment: .center)
        .minimumScaleFactor(0.1)
    }
}

/*
 Widok tekst ma takie fajne modifiery jak
    - .font
    - .multilineTextAlignment
 */

#Preview {
    TextBootcamp()
}
