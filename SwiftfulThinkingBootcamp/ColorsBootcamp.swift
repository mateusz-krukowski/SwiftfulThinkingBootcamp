//
//  ColorsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mateusz on 03/08/2026.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
       RoundedRectangle(cornerRadius: 25)
            .fill(
                //Color.primary
                //Color(uiColor: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
                //Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
            )
            .frame(width:300, height: 200)
    }
}

#Preview {
    ColorsBootcamp()
}
