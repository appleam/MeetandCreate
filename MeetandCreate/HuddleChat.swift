//
//  huddlechat.swift
//  Meet&Create2
//
//  Created by Aya Mizukami on 21/11/2024.
//

import SwiftUI

struct huddlechat: View {
    
    @State private var messaging: String = ""

    var body: some View {
        TextField("Send a message...", text: $messaging)
          .keyboardType(.default)
        
        }
    
    }

#Preview {
    huddlechat()
}


