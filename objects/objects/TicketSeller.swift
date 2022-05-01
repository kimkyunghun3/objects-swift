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
    
    public func getTicketOffice() -> TicketOffice {
        return ticketOffice
    }
}
