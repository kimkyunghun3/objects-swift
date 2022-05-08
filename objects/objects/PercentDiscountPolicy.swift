//
//  PercentDiscountPolicy.swift
//  objects
//
//  Created by Eddy on 2022/05/08.
//

import Foundation

class PercentDiscountPolicy: DiscountPolicy {
    var conditions: [DiscountCondition]
    private let percent: Double
    
    init(percent: Double, conditions: [DiscountCondition]) {
        self.percent = percent
        self.conditions = conditions
    }
    
    func getDiscountAmount(screening: Screening) -> Money {
        return screening.getMovieFee().times(percent: percent)
    }
    
    
}
