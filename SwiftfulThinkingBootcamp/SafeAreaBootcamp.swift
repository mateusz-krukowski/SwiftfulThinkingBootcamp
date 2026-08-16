//
//  SafeAreaBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mateusz on 16/08/2026.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        
        ScrollView {
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                    
                }
            }
            
        }
        .background(
            Color.red
                .edgesIgnoringSafeArea(.all) // old
                .ignoresSafeArea(.all) // new
        )
        
        //        VStack {
        //            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        //            Spacer()
        //
        //        } .frame(maxWidth: .infinity, maxHeight: .infinity)
        //            .background(.red)
        //            .edgesIgnoringSafeArea(.bottom)
        //    }
    }
}

#Preview {
    SafeAreaBootcamp()
}
