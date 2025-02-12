//
//  huddle.swift
//  Meet&Create2
//
//  Created by Aya Mizukami on 16/11/2024.
//

import SwiftUI

struct HuddleView: View {
    @State private var navigateToAnotherView = false

    var body: some View {
        NavigationStack {
            ZStack {
                Image("chat")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea(edges: .all)
                    .frame(width: 50, height: 390)
                    .opacity(0.4)
                    .offset(x: 0, y: 290)

                HStack {
                    VStack(alignment: .leading) {
                        Text("Huddles")
                            .font(.system(size: 30, weight: .bold))
                            .frame(maxWidth: .infinity, alignment: .topLeading)
                            .padding(.leading, 20)
                            .padding(.top, 32)

                        Divider()
                            .background(Color.gray)
                            .frame(height: 1)
                            .padding(.bottom, 5)

                        NavigationLink(destination: messages()) {
                            RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                                .frame(maxWidth: 350, maxHeight: 180)
                                .foregroundColor(Color(UIColor(red: 1.0, green: 0.69, blue: 0.0, alpha: 1.0)))
                                .overlay(
                                    HStack {
                                        VStack(alignment: .leading) {
                                            Text("Meet and Create 💡🖼️")
                                                .foregroundColor(.black)
                                                .font(.system(size: 20, weight: .bold))
                                                .padding(.bottom, 10)
                                            HStack {
                                                Image("cal")
                                                Text("Thu Nov 30 16:00")
                                                    .font(.system(size: 12, weight: .medium))
                                                    .foregroundColor(.black)
                                            }
                                            HStack {
                                                Image("loc")
                                                Text("Hyde Park")
                                                    .font(.system(size: 12, weight: .medium))
                                                    .foregroundColor(.black)
                                            }
                                            HStack(spacing: 16) {
                                                VStack {
                                                    Image("ava1")
                                                        .scaleEffect(0.25)
                                                        .scaledToFit()
                                                        .frame(width: 40, height: 40)
                                                        .padding(.top, 10)
                                                    Text("")
                                                        .font(.system(size: 11, weight: .regular))
                                                        .foregroundColor(.black)
                                                }
                                                VStack {
                                                    Image("ava2")
                                                        .scaleEffect(0.25)
                                                        .scaledToFit()
                                                        .frame(width: 40, height: 40)
                                                        .padding(.top, 10)
                                                    Text("")
                                                        .font(.system(size: 11, weight: .regular))
                                                        .foregroundColor(.black)
                                                }
                                                VStack {
                                                    Image("ava3")
                                                        .scaleEffect(0.25)
                                                        .scaledToFit()
                                                        .frame(width: 40, height: 40)
                                                        .padding(.top, 10)
                                                    Text("")
                                                        .font(.system(size: 11, weight: .regular))
                                                        .foregroundColor(.black)
                                                }
                                            }
                                        }
                                        .padding(30)
                                        Spacer()
                                    }
                                )
                                .padding(.top, 20)
                        }
                        .padding(.leading, 20)
                        Spacer()
                    }
                }

                Button(action: {
                    // Toggle navigation to another view
                    self.navigateToAnotherView = true
                }) {
                    Image(systemName: "info.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.black)
                }
                .padding(.leading, 280)
                .padding(.bottom, 410)
            }
            // New way of handling navigation
            .navigationDestination(isPresented: $navigateToAnotherView) {
                exploremembers()
            }
        }
    }
}

struct HuddleView_Previews: PreviewProvider {
    static var previews: some View {
        HuddleView()
    }
}

