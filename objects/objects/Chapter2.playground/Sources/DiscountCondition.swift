//
//  DiscountCondition.swift
//  objects
//
//  Created by Eddy on 2022/05/08.
//

import Foundation

protocol DiscountCondition {
    func isSatisfiedBy(screening: Screening) -> Bool
}
