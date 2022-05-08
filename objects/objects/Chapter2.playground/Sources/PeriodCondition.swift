//
//  PeriodCondition.swift
//  objects
//
//  Created by Eddy on 2022/05/08.
//

import Foundation

class PeriodCondition: DiscountCondition {
    private let dayOfWeek: DayOfWeek
    private let startTime: Date
    private let endTime: Date
    
    init(dayOfWeek: DayOfWeek, startTime: Date, endTime: Date) {
        self.dayOfWeek = dayOfWeek
        self.startTime = startTime
        self.endTime = endTime
    }
    
    func isSatisfiedBy(screening: Screening) -> Bool {
        return screening.getStartTime().getDayOfWeek() == dayOfWeek &&
             startTime <= screening.getStartTime() &&
             endTime >= screening.getStartTime()
     }
}
