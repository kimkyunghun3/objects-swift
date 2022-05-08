//
//  Date+.swift
//  objects
//
//  Created by Eddy on 2022/05/08.
//

import Foundation

extension Date {
     func getDayOfWeek() -> DayOfWeek {
         guard let day = DayOfWeek(rawValue: Calendar.current.component(.weekday, from: self)) else {
             fatalError()
         }
         return day
     }
 }
