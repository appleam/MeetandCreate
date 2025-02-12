//
//  explorescraps.swift
//  Meet&Create2
//
//  Created by Aya Mizukami on 21/11/2024.
//

import SwiftUI
 
struct exploremembers: View {
    var body: some View {
        //NavigationView {
            List(memberss) { members in
                membersRow(members: members)
            }
            .navigationTitle("Members")
        }
    }

 
struct membersRow: View {
    var members: members
 
    var body: some View {
        NavigationLink(destination: Detailed(members: members)) {
            HStack {
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .frame(width: 30, height: 30)
                VStack(alignment: .leading) {
                    Text(members.name)
                        .font(.headline)
                        .foregroundColor(.primary)
                }
            }
        }
    }
}

 
struct members: Identifiable {
    var id = UUID()
    var name: String
    var imageName: String
}
 
let memberss = [
    members(name: "Arjun Bahl", imageName: "arjun8"),
    members(name: "Aishah Raja", imageName: "aisha8"),
    members(name: "Manon Durand", imageName: "manon8"),
]







struct Detailed: View {
    var members: members
 
    var body: some View {
        VStack {
            Image(members.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 130)
                .aspectRatio(contentMode: .fill)
                .padding()
        }
        .navigationTitle(members.name)
    }
}


#Preview {
    exploremembers()
}
