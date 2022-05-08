//
//  DiscountPolicy.swift
//  objects
//
//  Created by Eddy on 2022/05/08.
//

import Foundation

protocol DiscountPolicy {
    func calculateDiscountAmount(screening: Screening) -> Money
}
