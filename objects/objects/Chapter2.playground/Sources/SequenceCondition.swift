//
//  SequenceCondition.swift
//  objects
//
//  Created by Eddy on 2022/05/08.
//

import Foundation

class SequenceCondition: DiscountCondition {
    private let sequence: Int
    
    init(sequence: Int) {
        self.sequence = sequence
    }
    
    func isSatisfiedBy(screening: Screening) -> Bool {
        return screening.isSequence(sequence: sequence)
    }
}
