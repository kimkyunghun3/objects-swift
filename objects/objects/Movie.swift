//
//  Movie.swift
//  objects
//
//  Created by Eddy on 2022/05/08.
//

import Foundation

class Movie {
    private let title: String
    private let runningTime: DateInterval
    private let fee: Money
    private let discoundPolicy: DiscountPolicy
    
    init(title: String, runningTime: DateInterval, fee: Money, discountPolicy: DiscountPolicy) {
        self.title = title
        self.runningTime = runningTime
        self.fee = fee
        self.discoundPolicy = discountPolicy
    }
    
    public func getFee() -> Money {
        return fee
    }
    
    public func calculateMovieFee(screening: Screening) -> Money {
        return self.fee.minus(amount: self.discoundPolicy.calculateDiscountAmount(screening: screening))
    }
}
