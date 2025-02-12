//
//  Found.swift
//  Meet&Create2
//
//  Created by Aya Mizukami on 22/11/2024.
//

import SwiftUI

struct Found: View {
    var body: some View {
        ZStack{
            Image("cuate")
                .resizable()
                .scaledToFill()
                .frame(width: 0, height: 1200, alignment: .bottom)
                .scaleEffect(0.32) // Adjust the scale as needed
                .opacity(0.5)
                .offset(x: -2, y: 240) // Adjust the offset to move it to the left
        
            VStack{
                
                Text("You joined a new Huddle!")
                    .font(.title)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .padding(.vertical,5)
                Text("Go to ")
                
                + Text(Image(systemName: "message.fill"))
                    .foregroundColor(.yellow) // You can modify the color of the image
                + Text(" Huddles to get to know them.")
                }
            .offset(x:0,y:-50)
        }
    }
}

#Preview {
    Found()
}
