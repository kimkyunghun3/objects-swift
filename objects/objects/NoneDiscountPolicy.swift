//
//  NoneDiscountPolicy.swift
//  objects
//
//  Created by Eddy on 2022/05/08.
//

import Foundation

class NoneDiscountPolicy: DiscountPolicy {
    func calculateDiscountAmount(screening: Screening) -> Money {
        return Money.zero
    }
}
