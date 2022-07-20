//
//  ViewController.swift
//  Decorator
//
//  Created by Алексей Ходаков on 10.07.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Простой кофе
        let simpleCoffee = SimpleCoffee()
        
        // Кофе с молоком
        let coffeeWithMilk = Milk(base: simpleCoffee)
        
        // Кофе со взитым молоком
        let whippedCoffee = Whip(base: coffeeWithMilk)
        
        // Кофе с сахором
        let coffeeWithSugar = Sugar(base: simpleCoffee)
        
        // Кофе со взбитым молоком и сахаром
        let coffeeWithWhippedMilkAndSugar = Sugar(base: whippedCoffee)
        
        print("Простой кофе", simpleCoffee.cost)
        print("Кофе с молоком", coffeeWithMilk.cost)
        print("Кофе со взитым молоком", whippedCoffee.cost)
        print("Кофе с сахором", coffeeWithSugar.cost)
        print("Кофе со взбитым молоком и сахаром", coffeeWithWhippedMilkAndSugar.cost)
    }


}

