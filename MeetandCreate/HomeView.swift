//
//  HomeView.swift
// Meet&Create2
//
//  Created by Aya Mizukami on 09/11/2024.
//

import SwiftUI

struct HomeView: View {
    @State private var navigateToAnotherView = false

    var body: some View {
        NavigationStack { // Use NavigationStack instead of NavigationView
            ZStack {
                HStack {
                    Image("bg")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 0, height: 1200, alignment: .bottom)
                        .scaleEffect(0.32)
                        .opacity(0.5)
                        .offset(x: -100, y: 230)
                }
                
                ZStack {
                    Image("logo")
                        .scaleEffect(1.05)
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .offset(y: -240)
                    
                    VStack {
                        Text("MEET AND CREATE")
                            .font(.system(.largeTitle, design: .rounded))
                            .foregroundColor(.orange)
                            .opacity(0.8)
                            .fontWeight(.heavy)
                            .offset(x: 0, y: -25)
                        
                        Text("Connect with creatives in a social way!")
                            .offset(x: 0, y: -25)
                        
                        Button {
                            self.navigateToAnotherView = true
                        } label: {
                            VStack {
                                Text("FIND A")
                                    .multilineTextAlignment(.center)
                                    .font(.title)
                                    .fontWeight(.medium)
                                    .foregroundColor(.white)
                                
                                Text("HUDDLE")
                                    .multilineTextAlignment(.center)
                                    .font(.title)
                                    .fontWeight(.medium)
                                    .foregroundColor(.white)
                            }
                            .padding()
                            .background(Color.orange)
                            .clipShape(Circle())
                            .shadow(color: Color.gray, radius: 6, x: 0, y: 2)
                            .padding(.bottom, 80)
                        }
                        // Use the new navigationDestination modifier
                        .navigationDestination(isPresented: $navigateToAnotherView) {
                            Calendar2()
                        }
                    }
                    
                    Image("info")
                        .scaleEffect(0.6)
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .offset(x: 150, y: -330)
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
