//
//  Screen3.swift
//  Meet&Create2
//
//  Created by Aya Mizukami on 22/11/2024.
//

import SwiftUI

struct Screen3View: View {
//    @State private var navigateToAnotherView = false
    var body: some View {
       

        ZStack {
            Text("Meet and Create")
                .font(.largeTitle)
                .fontWeight(.bold)
             
            
           .padding()
                .frame(width:370, height:750, alignment:.topLeading)
            
            
            
            VStack {
                Text ("Looking for a huddle...")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.title2)
                    .offset (y:-30)
                
                ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .stroke()
                    .stroke(lineWidth: 3.0)
                            .frame(width:350, height:300)
                           .foregroundColor(.orange)
//top right
                Image ("bubble2")
                    .resizable()
                    .scaledToFit()
                    .frame( width:100, height:100)
                    .offset(x: 50, y: -50)
//                    Image ("france")
//                        .resizable()
//                        .scaledToFit()
//                        .frame( width:45, height:100)
//                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/FillStyle()/*@END_MENU_TOKEN@*/)
                    ProgressView("")
                        .progressViewStyle(CircularProgressViewStyle(tint: .white))
                        .padding()
                    .offset(x: 50, y: -45)
                    
//bottom right
                    Image ("bubble2")
                        .resizable()
                        .scaledToFit()
                        .frame( width:100, height:100)
                        .offset(x: 50, y: 50)
                    Image ("india")
                        .resizable()
                        .scaledToFit()
                        .frame( width:45, height:100)
                    
                        .offset(x: 50, y: 50)

//top left
                    
                    Image("bubble2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .scaleEffect(x: -1, y: 1) // Flip horizontally
                        .offset(x: -50, y: -50)
                    Text ("You")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .frame (width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height:100)
                        .offset (x: -50,y:-50)
                        .font(.system(size: 20))
                    
//bottom left
                    Image("bubble2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .scaleEffect(x: -1, y: 1) // Flip horizontally
                        .offset(x: -50, y: 50)
//                    Image ("malaysia")
//                        .resizable()
//                        .scaledToFit()
//                        .frame( width:45, height:100)
                    ProgressView("")
                        .progressViewStyle(CircularProgressViewStyle(tint: .white))
                        .padding()
                        .offset(x:-50, y: 55)
                        
                }
                
                ZStack {
                    
                    
                    Circle()
                        .foregroundColor(.red)
                        .offset (y:30)
                    
                    Image("fork")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                        .offset (x: -130, y:25)
                    
                    Image("knife")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                        .offset (x: 130, y:30)
                    
                    
                        
                    Button("CANCEL"){
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        
                        
                        
                    }
                    
                    .offset(y:30)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                }
                

            }
            
            
            
            .frame(width:350, height:500, alignment:.topLeading)
        }
        .frame(width:400, height:700)
    }
}

#Preview {
    Screen3View()
}

