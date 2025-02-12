//
//  ContentView.swift
//  Meet&Create2
//
//  Created by Aya Mizukami on 17/11/2024.
//

import SwiftUI

struct finding: View {
    @EnvironmentObject var viewModel: AppViewModel
    @State private var navigateToAnotherView = false
    @State private var scale = 0.5
    
    var body: some View {
        NavigationStack { // Use NavigationStack instead of NavigationView
            ZStack {
                Text("Join a Huddle!")
                    .font(.largeTitle)
                    .bold()
                    .frame(width: 343, height: 680, alignment: .topLeading)
                    .padding(.top, 17)
                
                Divider()
                    .background(Color.gray)
                    .frame(height: 1)
                    .padding(.bottom, 560)
                
                Text("We have found a huddle for you.")
                    .frame(width: 340, height: 580, alignment: .topLeading)
                    .padding(.top, 45)
                
                VStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.yellow.opacity(0.2))
                            .frame(width: 350, height: 300)
                        
                        // Top right
                        Image("bubble2")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .offset(x: 50, y: -50)
                        Image("ux")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 35, height: 50)
                            .clipShape(Circle())
                            .offset(x: 50, y: -50)
                            .animation(.bouncy(duration: 4, extraBounce: 0.5), value: scale)
                        
                        // Bottom right
                        Image("bubble2")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .offset(x: 55, y: 45)
                        Image("film")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 45, height: 100)
                            .clipShape(Circle())
                            .offset(x: 55, y: 45)
                            .animation(.bouncy(duration: 2, extraBounce: 0.5), value: scale)
                        
                        // Top left
                        Image("bubble2")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .scaleEffect(x: -1, y: 1)
                            .offset(x: -55, y: -60)
                        Text("You")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .frame(width: 100, height: 100)
                            .offset(x: -55, y: -60)
                            .font(.system(size: 20))
                        
                        // Bottom left
                        Image("bubble2")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .scaleEffect(x: -1, y: 1)
                            .offset(x: -50, y: 35)
                        Image("paint")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 45, height: 40)
                            .clipShape(Circle())
                            .offset(x: -50, y: 35)
                            .animation(.bouncy(duration: 3, extraBounce: 0.5), value: scale)
                    }
                    .padding(.top, 60)
                    
                    ZStack {
                        Image("paintleft")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 90, height: 90)
                            .offset(x: -90, y: 30)
                        
                        Image("filmright")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 90, height: 90)
                            .offset(x: 90, y: 30)
                        
                        Button(action: {
                            withAnimation {
                                self.navigateToAnotherView = true
                                viewModel.selectedTab = 1
                            }
                        }) {
                            Text("JOIN")
                                .foregroundColor(.white)
                                .font(.title)
                                .tracking(1)
                                .padding(40)
                        }
                        .background(Color.orange)
                        .clipShape(Circle())
                        .shadow(color: Color.gray, radius: 2, x: 0, y: 2)
                        .offset(y: 30)
                        
                        // Use navigationDestination to handle navigation
                        .navigationDestination(isPresented: $navigateToAnotherView) {
                            Found()
                        }
                    }
                    .padding(.top, 20)
                }
                .frame(width: 350, height: 500, alignment: .topLeading)
            }
            .frame(width: 400, height: 700)
        }
    }
}

#Preview {
    finding()
}
