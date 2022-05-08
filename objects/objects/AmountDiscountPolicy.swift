//
//  AmountDiscountPolicy.swift
//  objects
//
//  Created by Eddy on 2022/05/08.
//

import Foundation

class AmountDiscountPolicy: DiscountPolicy {
    var conditions: [DiscountCondition]
    private let discountAmount: Money
    
    init(discountAmount: Money, conditions: [DiscountCondition]) {
        self.conditions = conditions
        self.discountAmount = discountAmount
    }

    func getDiscountAmount(screening: Screening) -> Money {
        return discountAmount
    }
}
