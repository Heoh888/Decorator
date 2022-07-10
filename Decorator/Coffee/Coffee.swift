//
//  Coffee.swift
//  Decorator
//
//  Created by Алексей Ходаков on 10.07.2022.
//

import Foundation

protocol Coffee {
    var cost: Double { get }
}

class SimpleCoffee: Coffee {
    var cost: Double {
        return 10.0
    }
}

// MARK: - Decorator
protocol CoffeeDecorator: Coffee {
    var base: Coffee { get }
    init(base: Coffee)
}

// MARK: - Implementations
class Milk: CoffeeDecorator {
    let base: Coffee
    var cost: Double {
        return base.cost + 10.0
    }
    
    required init(base: Coffee) {
        self.base = base
    }
}

class Whip: CoffeeDecorator {
    let base: Coffee
    var cost: Double {
        return base.cost + 15.0
    }
    
    required init(base: Coffee) {
        self.base = base
    }
}

class Sugar: CoffeeDecorator {
    let base: Coffee
    var cost: Double {
        return base.cost + 5.0
    }
    
    required init(base: Coffee) {
        self.base = base
    }
}
