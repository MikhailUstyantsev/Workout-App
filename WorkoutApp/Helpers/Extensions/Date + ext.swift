//
//  Date + ext.swift
//  WorkoutApp
//
//  Created by Mikhail Ustyantsev on 10.09.2023.
//

import Foundation

extension Date {
    
    private var calendar: Calendar {
        var calendar = Calendar(identifier: .gregorian)
        calendar.locale = Locale(identifier: "ru_RU")
        return calendar
    }
    
    var startOfWeek: Date {
        let currentDate = Date()
        let startOfWeek = calendar.date(from: calendar.dateComponents([.yearForWeekOfYear, .weekOfYear], from: currentDate)) ?? self
        
        return startOfWeek
    }

    
    func goForward(to days: Int) -> Date {
        return calendar.date(byAdding: .day, value: days, to: self) ?? self
    }
    
    
    func stripTime() -> Date {
        let components = calendar.dateComponents([.year, .month, .day], from: self)
        return calendar.date(from: components) ?? self
    }
    
}
