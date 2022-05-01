//
//  Ticket.swift
//  objects
//
//  Created by Eddy on 2022/05/01.
//

import Foundation

class Ticket {
    private let fee: Double
    
    init(fee: Double) {
        self.fee = fee
    }
    
    public func getFee() -> Double {
        return fee
    }
}
