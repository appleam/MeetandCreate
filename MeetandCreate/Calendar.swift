//
//  Calendar.swift
//  Meet&Create2
//
//  Created by Aya Mizukami on 02/11/2024.
//

import SwiftUI

struct Calendar2: View {
    // Navigation state for the destination
    @State private var navigateToFinding = false
    @State private var selectedDates: Set<DateComponents> = []

    let fromDate = Date()
    let toDate = Calendar.current.date(byAdding: .day, value: 14, to: Date())!

    var body: some View {
        NavigationStack {
            VStack {
                ZStack {
                    Text("Find a Huddle!")
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 343, height: 680, alignment: .topLeading)
                        .padding(.top, 17)

                    Divider()
                        .background(Color.gray)
                        .frame(height: 1)
                        .padding(.bottom, 560)

                    Text("Select your availability for the next 2 weeks.")
                        .frame(width: 340, height: 580, alignment: .topLeading)
                        .padding(.top, 45)

                    VStack {
                        MultiDatePicker("Availability", selection: $selectedDates, in: fromDate..<toDate)
                            .frame(height: 300)
                            .tint(.orange)
                            .padding()
                            .background(Color.yellow.opacity(0.2).gradient, in: RoundedRectangle(cornerRadius: 10))
                    }
                    .padding()

                    // NavigationLink using the new iOS 16 syntax
                    Button(action: {
                        self.navigateToFinding = true
                    }) {
                        Text("FIND")
                            .font(.headline)
                            .padding(.vertical, 10)
                            .padding(.horizontal, 50)
                            .background(
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color.orange)
                                    .shadow(color: .gray, radius: 1, x: 0, y: 2)
                            )
                            .foregroundColor(.white)
                    }
                    .frame(width: 300, height: 600, alignment: .bottom)
                    .padding(.bottom, 110)
                    .navigationDestination(isPresented: $navigateToFinding) {
                        finding()
                    }
                }
            }
        }
    }
}

// A placeholder for the 'finding' view destination
struct Finding: View {
    var body: some View {
        Text("Finding View")
    }
}

#Preview {
    Calendar2()
}
