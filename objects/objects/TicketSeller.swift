//
//  TicketSeller.swift
//  objects
//
//  Created by Eddy on 2022/05/01.
//

import Foundation

class TicketSeller {
    private let ticketOffice: TicketOffice
    
    init(ticketOffice: TicketOffice) {
        self.ticketOffice = ticketOffice
    }
    
    public func sellTo(audience: Audience) {
        if (audience.getBag().hasInvitation()) {
            let ticket: Ticket = ticketOffice.getTicket()
            audience.getBag().setTicket(ticket: ticket)
        } else {
            let ticket: Ticket = ticketOffice.getTicket()
            audience.getBag().minusAmount(amount: ticket.getFee())
            ticketOffice.plusAmount(ticket.getFee())
            audience.getBag().setTicket(ticket: ticket)
        }
    }
}
