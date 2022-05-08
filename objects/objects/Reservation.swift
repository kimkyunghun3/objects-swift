//
//  Reservation.swift
//  objects
//
//  Created by Eddy on 2022/05/08.
//

import Foundation

class Reservation {
    private let customer: Customer
    private let screening: Screening
    private let fee: Money
    private let audienceCount: Int
    
    init(customer: Customer, screening: Screening, fee: Money, audienceCount: Int) {
        self.customer = customer
        self.screening = screening
        self.fee = fee
        self.audienceCount = audienceCount
    }
}
