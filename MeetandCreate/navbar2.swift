//
//  navbar.swift
//  Meet&Create2
//
//  Created by Aya Mizukami on 19/10/2024.
//

import SwiftUI
 
@main
struct navbar: App {
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(AppViewModel())
        }
    }
}

struct ContentView: View {
    @StateObject var viewModel = AppViewModel()
    
    @State private var selection = 0
    var body: some View {
        
        TabView(selection: $selection){
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
                .tag(0)
            HuddleView()
                .tabItem {
                    Image(systemName: "message.fill")
                    Text("Huddles")
                }
                .tag(1)
            ScrapView()
                .tabItem {
                    Image(systemName: "book.pages")
                    Text("Scrapbook")
                }
                .tag(2)
            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .tag(3)
        }
        
        .onAppear {
                        // correct the transparency bug for Tab bars
                        let tabBarAppearance = UITabBarAppearance()
                        tabBarAppearance.configureWithOpaqueBackground()
                        UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance

                    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
