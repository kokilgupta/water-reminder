//
//  WaterViewModel.swift
//  Water Reminder
//
//  Created by Kokil Gupta on 22/11/25.
//

import Foundation
import SwiftUI

class WaterViewModel: ObservableObject {
    let dailyGoal: Double = 2500
    @Published var consumedToday: Double = 0
    var percentage: Double {
        if dailyGoal == 0 {
            return 0
        }
        let progress = consumedToday/dailyGoal
        return min(progress*100,100)
    }

    func addWater(amount: Double) {
        consumedToday += amount
    }
}
