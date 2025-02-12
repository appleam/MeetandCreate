//
//  NewEditView.swift
//  Meet&Create2
//
//  Created by Aya Mizukami on 22/11/2024.
//

import SwiftUI

struct NewEditView: View {
    var body: some View {
        
        HStack{
            VStack(alignment: .leading) {
                ZStack{
                    Text("Your Scrapbook")
                        .font(.system(size: 30, weight: .bold))
                        .frame(maxWidth: .infinity, maxHeight:.infinity, alignment: .topLeading)
                        .padding(.leading, 20)
                        .padding(.top,10)
                    
                    
                    Divider()
                    
                        .background(Color.gray)
                        .frame(height: 1)
                        .padding(.bottom,550)
                    
                    
                    Image("pana")
                        .padding(.bottom, 230)
                       
                        .offset(x:0, y:70)
                    
                    Text("You have not made any scrapbooks.")
                    
                        .padding(30)
                        .padding(.top, 245)
                       
                    
                    Button(action: {
                        //                        self.navigateToFinding = true
                        
                    }) {
                        // The appearance of the button
                        Text("START YOUR SCRAPBOOK!")
                            .font(.headline)
                        
                            .padding(.vertical, 10)
                            .padding(.horizontal, 50)
                            .background(
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color.orange) // Fill the shape with the color
                                    .shadow(color: .gray, radius: 1, x: 0, y: 2) // Then apply the shadow
                            )
                            .padding(.top,500)
                            .foregroundColor(.white) // Set the text color
                        // .offset(x:0,y:250)
                    }
                    //
                    //         NavigationLink(destination: ContentView()) {
                    //                    RoundedRectangle(cornerSize: CGSize(width: 40, height: 40))
                    //                        .frame(maxWidth: 350, maxHeight: 60)
                    //                        .foregroundColor(Color(UIColor(red: 1.0, green: 0.69, blue: 0.0, alpha: 1.0)))
                    //                        .overlay(
                    //                            VStack(alignment: .leading)  {
                    //                                Text("Start your scrapbook!")
                    //                                    .foregroundColor(.white)
                    //                                    .font(.system(size: 18, weight: .bold))
                    //                            })
                    //                    // Customize the content inside the RoundedRectangle as needed
                    //                }
                    //                .padding(.leading, 20)
                    //                .padding(.top,90)
                    //                Spacer()
                }
            }
            
        }
    }
}

#Preview {
    NewEditView()
}
