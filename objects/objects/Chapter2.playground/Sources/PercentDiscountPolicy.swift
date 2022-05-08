//
//  PercentDiscountPolicy.swift
//  objects
//
//  Created by Eddy on 2022/05/08.
//

import Foundation

class PercentDiscountPolicy: DefaultDiscountPolicy {
    private var percent: Double
 
    init(percent: Double, conditions: [DiscountCondition]) {
        self.percent = percent
    }
    
    override func getDiscountAmount(screening: Screening) -> Money {
        return screening.getMovieFee().times(percent: percent)
    }
    
    
}
