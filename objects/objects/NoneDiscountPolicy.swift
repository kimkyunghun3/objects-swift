//
//  NoneDiscountPolicy.swift
//  objects
//
//  Created by Eddy on 2022/05/08.
//

import Foundation

class NoneDiscountPolicy: DiscountPolicy {
    var conditions: [DiscountCondition] = []
    
    func getDiscountAmount(screening: Screening) -> Money {
        return Money.zero
    }
}
