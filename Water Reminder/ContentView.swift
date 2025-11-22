//
//  ContentView.swift
//  Water Reminder
//
//  Created by Kokil Gupta on 18/11/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = WaterViewModel()

    var body: some View {
        VStack {
            Text("Daily Goal: \(String(format: "%.2f", vm.dailyGoal))  ml")
            Text("Amount Consumed: \(String(format: "%.2f", vm.consumedToday)) ml")
            Button("Add 250 ml") {
                vm.addWater(amount: 250)
            }
            .padding(.top, 30)
            Text("Percentage: \(String(format: "%.2f", vm.percentage)) %")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
