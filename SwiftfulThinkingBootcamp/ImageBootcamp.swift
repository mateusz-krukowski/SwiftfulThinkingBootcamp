//
//  ImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mateusz on 06/08/2026.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        VStack {
            Image("Yakisoba")
                .resizable()
            //.scaledToFit()
            //.aspectRatio(contentMode: .fit) //works as scaled to fit
                .scaledToFill()
                .frame(width:300, height:200)
                .clipped()
            //.cornerRadius(30)
                .clipShape(Circle())
            
            Image("true-religion")
                .renderingMode(.template) //allows recoloring
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 200)
                .foregroundStyle(Color(uiColor: #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)))
                
        }
    }
}

#Preview {
    ImageBootcamp()
}
