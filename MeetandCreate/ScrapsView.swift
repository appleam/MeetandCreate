//
//  ScrapView.swift
//  Meet&Create2
//
//  Created by Aya Mizukami on 21/11/2024.
//

import SwiftUI

struct ScrapView: View {
    var body: some View {
        NavigationView {
            HStack{
                VStack(alignment: .leading) {
                Text("Scrapbook")
                    .font(.system(size: 30, weight: .bold))
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    .padding(.leading, 20)
                    .padding(.top, 32)
                
                Divider()
                    .background(Color.gray)
                    .frame(height: 1)
                    .padding(.bottom, 5)
                
                NavigationLink(destination: explorescraps()) {
                    RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                    
                        .frame(maxWidth: 350, maxHeight: 180)
                        .foregroundColor(Color(red: 1, green: 0.965, blue: 0.89))
                        .overlay(
                            HStack{
                                VStack(alignment: .leading)  {
                                  
                                  
                                    HStack{
                                        Image("explore")
                                            .scaleEffect(1.1)
                                            .scaledToFit()
                                            .padding(.leading, -40)
                                        //                                            .padding(.bottom, 5)
                                        //                                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                                        VStack (spacing: -8){
                                            Text("Explore")
                                            //                                                           .padding(.leading, 10)
                                            //                                                        .font(.headline)
                                                .font(.system(size: 24, weight: .medium))
                                                .padding(.bottom, 10)
                                                                                                    .foregroundColor(.black)
                                                                                                    .padding(.leading, -59)
                                            Text("Scrapbooks")
                                            //                                                           .padding(.leading, 10)
                                            //                                                        .font(.headline)
                                                .font(.system(size: 24, weight: .medium))
                                                .padding(.bottom, 10)
                                              
                                                .foregroundColor(.black)
                                                .padding(.leading, -16)
                                              }
                                        .padding(.leading, 22)
                                           
                                    }
                                   
                                
                                    
                                }
//                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
//                                .padding(10)
                                Spacer()
                                   
                                   
                            }
                                
                                                
                                               )
                        .clipped()
                    // Customize the content inside the RoundedRectangle as needed
                    
                }
                .padding(.leading, 20)
                .padding(.bottom, 16)
                .padding(.top, 16)
               
                    NavigationLink(destination: NewEditView()) {
                        RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                            .frame(maxWidth: 350, maxHeight: 180)
                            .foregroundColor(Color(red: 1, green: 0.965, blue: 0.89))
                            .overlay(
                                HStack{
                                    VStack(alignment: .leading)  {
                                      
                                      
                                        HStack{
                                            Image("edit")
                                                .scaleEffect(1.2)
                                                .scaledToFit()
                                                .padding(.leading, -2)
                                            //                                            .padding(.bottom, 5)
                                            //                                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                                            VStack (spacing: -8){
                                                Text("Edit Your")
                                                //                                                           .padding(.leading, 10)
                                                //                                                        .font(.headline)
                                                    .font(.system(size: 24, weight: .medium))
                                                    .padding(.bottom, 10)
                                                                                                        .foregroundColor(.black)
                                                                                                        .padding(.leading, 1)
                                                Text("Scrapbook")
                                                //                                                           .padding(.leading, 10)
                                                //                                                        .font(.headline)
                                                    .font(.system(size: 24, weight: .medium))
                                                    .padding(.bottom, 10)
                                                  
                                                    .foregroundColor(.black)
                                                    .padding(.leading, 22)
                                                  }
                                            .padding(.leading, 16)
                                               
                                        }
                                       
                                    
                                        
                                    }
    //                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
    //                                .padding(10)
                                    Spacer()
                                       
                                }
                                    
                                                    
                                                   )
                            .clipped()
                        // Customize the content inside the RoundedRectangle as needed
                        
                        
                    }
                .padding(.leading, 20)
                    
                Spacer()
                    
                    
                    
            }
                
            }

        }
    }
}

#Preview {
    ScrapView()
}
