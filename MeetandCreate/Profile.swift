//
//  profile.swift
//  Meet&Create2
//
//  Created by Aya Mizukami on 19/11/2024.
//

import Foundation
import SwiftUI

struct ProfileView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Profile")
                    .font(.system(size: 30, weight: .bold))
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    .padding(.leading, 20)
                    .padding(.top, -62)
                   
                Divider()
                    .background(Color.gray)
                    .frame(height: 1)
                    .padding(.bottom, 5)
                    .offset(y:-30)
                
                Image("jasprofile")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 200)
                    .padding(.bottom, 30)
            }
        }
        


        
    }
}

#Preview {
    ProfileView()
}
