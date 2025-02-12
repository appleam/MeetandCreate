//
//  explorescraps.swift
//  Meet&Create2
//
//  Created by Aya Mizukami on 21/11/2024.
//

import SwiftUI
 
struct explorescraps: View {
    var body: some View {
        //NavigationView {
            GridView(items: scrapbooks) { scrapbook in
                ScrapbookView(scrapbook: scrapbook)
            }
            
            //header
            .navigationTitle("Explore Scraps")
            .font(.system(size: 30, weight: .bold))
            .frame(maxWidth: .infinity, alignment: .topLeading)
            .padding(.top, 32)
        
        }
    }

 //gridding
struct GridView<Content: View, T: Identifiable>: View {
    let items: [T]
    let content: (T) -> Content
 
    var body: some View {
        ScrollView {
            LazyVGrid(columns: Array(repeating: .init(), count: 2)) {
                ForEach(items, content: content)
            }
            .padding()
        }
    }
}
 //scrap pic details
struct ScrapbookView: View {
    var scrapbook: Scrapbook
 
    var body: some View {
        NavigationLink(destination: DetailView(scrapbook: scrapbook)) {
            VStack {
                Image(scrapbook.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 160)
                    .cornerRadius(10)
                Text(scrapbook.name)
                    .font(Font.headline.weight(.medium))
                Text(scrapbook.lastUpdated)
                    .font(.subheadline.weight(.medium))
                    .foregroundColor(.secondary)
            }
            .padding(20)
            .background(Color.white)
            .cornerRadius(20)
        }
    }
}
 
struct Scrapbook: Identifiable {
    var id = UUID()
    var name: String
    var lastUpdated: String
    var imageName: String
    var detailImageName: String
}
 


let scrapbooks = [
    Scrapbook(name: "Arjun's Scrapbook", lastUpdated: "13 Nov", imageName: "arjun", detailImageName: "ARJUNCAT"),
    Scrapbook(name: "Aishah's Scrapbook", lastUpdated: "19 Nov", imageName: "aishah", detailImageName: "AISHADOG"),
    Scrapbook(name: "Manon's Scrapbook", lastUpdated: "3 Nov", imageName: "manon", detailImageName: "manonscrap"),
    Scrapbook(name: "Ruvini's Scrapbook", lastUpdated: "08 Nov", imageName: "joe",detailImageName: "Group1913"),
    Scrapbook(name: "Houdini's Scrapbook", lastUpdated: "13 Nov", imageName: "houdini",detailImageName: "ARJUNCAT"),
]





//individual detailed scraps
struct DetailView: View {
    var scrapbook: Scrapbook
    
    var body: some View {
        VStack {
            Image(scrapbook.detailImageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 400)
                .padding(.top, 30)

            .navigationTitle(scrapbook.name)
        }
    }
}



//preview
#Preview {
    explorescraps()
}

