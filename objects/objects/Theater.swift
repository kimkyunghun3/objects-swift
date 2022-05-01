//
//  Theater.swift
//  objects
//
//  Created by Eddy on 2022/05/01.
//

import Foundation

class Theater {
    private let ticketSeller: TicketSeller
    
    init(ticketSeller: TicketSeller) {
        self.ticketSeller = ticketSeller
    }
    
    public func enter(audience: Audience) {
        if (audience.getBag().hasInvitation()) {
            let ticket: Ticket = ticketSeller.getTicketOffice().getTicket()
            audience.getBag().setTicket(ticket: ticket)
        } else {
            let ticket: Ticket = ticketSeller.getTicketOffice().getTicket()
            audience.getBag().minusAmount(amount: ticket.getFee())
            ticketSeller.getTicketOffice().plusAmount(ticket.getFee())
            audience.getBag().setTicket(ticket: ticket)
        }
    }
}
