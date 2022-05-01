//
//  TicketOffice.swift
//  objects
//
//  Created by Eddy on 2022/05/01.
//

import Foundation

class TicketOffice {
    private var amount: Double
    private var tickets = [Ticket]()
    
    init(amount: Double, tickets: [Ticket]) {
        self.amount = amount
        self.tickets = tickets
    }
    
    public func getTicket() -> Ticket {
        return tickets.removeLast()
    }
    
    public func minusAmount(_ amount: Double) {
        self.amount -= amount
    }
    
    public func plusAmount(_ amount: Double) {
        self.amount += amount
    }
}
