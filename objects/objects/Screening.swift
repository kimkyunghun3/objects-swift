//
//  Screening.swift
//  objects
//
//  Created by Eddy on 2022/05/08.
//

import Foundation

class Screening {
    private var movie: Movie
    private var sequence: Int
    private var whenScreened: Date
    
    init(movie: Movie, sequence: Int, whenScreened: Date) {
        self.movie = movie
        self.sequence = sequence
        self.whenScreened = whenScreened
    }
    
    public func getStartTime() -> Date {
        return whenScreened
    }
    
    public func isSequence(sequence: Int) -> Bool {
        return self.sequence == sequence
    }
    
    public func getMovieFee() -> Money {
        return movie.getFee()
    }
    
    public func reserve(customer: Customer, audienceCount: Int) -> Reservation {
        return Reservation(customer: customer, screening: self, fee: calculateFee(audienceCount: audienceCount), audienceCount: audienceCount)
    }
    
    public func calculateFee(audienceCount: Int) -> Money {
        return self.movie.calculateMovieFee(screening: self).times(percent: Double(audienceCount))
    }
}
