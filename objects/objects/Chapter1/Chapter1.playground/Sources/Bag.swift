//
//  Bag.swift
//  objects
//
//  Created by Eddy on 2022/05/01.
//

import Foundation

class Bag {
    private var amount: Double
    private let invitation: Invitation?
    private var ticket: Ticket?
    
    init(amount: Double, invitation: Invitation?) {
        self.amount = amount
        self.invitation = invitation
    }
    
    convenience init(amount: Double) {
        self.init(amount: amount, invitation: nil)
    }
    
    public func hasInvitation() -> Bool {
        return invitation != nil
    }
    
    public func hasTicket() -> Bool {
        return ticket != nil
    }
    
    public func setTicket(ticket: Ticket) {
        self.ticket = ticket
    }
    
    public func minusAmount(amount: Double) {
        self.amount -= amount
    }
}
