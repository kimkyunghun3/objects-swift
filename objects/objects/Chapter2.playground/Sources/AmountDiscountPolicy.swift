//
//  AmountDiscountPolicy.swift
//  objects
//
//  Created by Eddy on 2022/05/08.
//

import Foundation

class AmountDiscountPolicy: DefaultDiscountPolicy {
    private let discountAmount: Money
    
    init(discountAmount: Money, conditions: [DiscountCondition]) {
        self.discountAmount = discountAmount
    }

    override func getDiscountAmount(screening: Screening) -> Money {
        return discountAmount
    }
}
