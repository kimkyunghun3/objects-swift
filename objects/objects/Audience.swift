//
//  Audience.swift
//  objects
//
//  Created by Eddy on 2022/05/01.
//

import Foundation

class Audience {
    private var bag: Bag
    
    init(bag: Bag) {
        self.bag = bag
    }
    
    public func getBag() -> Bag {
        return bag
    }
}
