//
//  DefaultDiscountPolicy.swift
//  objects
//
//  Created by Eddy on 2022/05/08.
//

import Foundation

class DefaultDiscountPolicy: DiscountPolicy {
    var conditions: [DiscountCondition] = []
    
    func getDiscountAmount(screening: Screening) -> Money {
        preconditionFailure("This method must be overridden")
    }
    
    func calculateDiscountAmount(screening: Screening) -> Money {
        for each in conditions {
            if each.isSatisfiedBy(screening: screening) {
                return getDiscountAmount(screening: screening)
            }
        }
        return Money.zero
    }
    
}
