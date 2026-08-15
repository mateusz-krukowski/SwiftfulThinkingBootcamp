//
//  InitializerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mateusz on 12/08/2026.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    enum Fruit {
        case apple
        case orange
    }
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        switch fruit {
        case .apple:
            self.backgroundColor = .red
            self.title = "Apples"
        case .orange:
            self.backgroundColor = .orange
            self.title = "Oranges"
        }
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundStyle(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundStyle(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    HStack {
        InitializerBootcamp(count: 2137, fruit: .apple)
        InitializerBootcamp(count: 26, fruit: .orange)
        InitializerBootcamp(count: 100, fruit: .apple)
    }
    .frame(width: 200).scaledToFit()
}
