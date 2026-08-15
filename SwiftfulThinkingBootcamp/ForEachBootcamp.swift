//
//  ForEachBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mateusz on 13/08/2026.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Hi", "Hello", "Hey everyone"]
    let myString: String = "Hello"
    
    var body: some View {
        ScrollView {
            ForEach(data.indices, id: \.self) { index in
                HStack {
                    Circle().frame(width: 30, height: 30)
                    Text("\(data[index]): \(index)").font(.largeTitle)
                }
            }
        }
    }
}

#Preview {
    ForEachBootcamp()
}
