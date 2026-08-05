//
//  IconsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mateusz on 05/08/2026.
//

import SwiftUI

struct IconsBootcamp: View {
    
    var body: some View {
        
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original) //important for multicolor icons
            //.resizable()
           //.aspectRatio(contentMode: .fill)
            //.font(.caption)
            .font(.system(size:42, weight: .bold))
            .foregroundStyle(Color("CustomColor"))
            //.scaledToFit()
            //.scaledToFill()
           //.frame(width: 300, height: 300)
            //.clipped()
    }
}

#Preview {
    IconsBootcamp()
}
