//
//  DiscountPolicy.swift
//  objects
//
//  Created by Eddy on 2022/05/08.
//

import Foundation

protocol DiscountPolicy {
    var conditions: [DiscountCondition] { get set }
    
    func calculateDiscountAmount(screening: Screening) -> Money
    
    func getDiscountAmount(screening: Screening) -> Money
}

extension DiscountPolicy {
    func calculateDiscountAmount(screening: Screening) -> Money {
        for each in conditions {
            if each.isSatisfiedBy(screening: screening) {
                return getDiscountAmount(screening: screening)
            }
        }
        return Money.zero
    }
}
