//
//  StacksBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mateusz on 09/08/2026.
//

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
        
        VStack(spacing: 50) {
            
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                Text("1")
                    .font(.title)
                    .foregroundStyle(.white)
            }
            Text("1")
                .font(.title)
                .foregroundStyle(.white)
                .background {
                    Circle()
                        .frame(width: 100, height: 100)
                }
        }
    }
}

#Preview {
    StacksBootcamp()
}
