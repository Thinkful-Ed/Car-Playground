// Thinkful Playground
// Thinkful.com

// Simple Car Playground

// This example covers basic object oriented programming in Swift.

import UIKit

class Car {
    
    // These are the properies of a Car object. Each Car will have these properies.
    
    let color: UIColor
    let horsepower: Int
    let isAutomatic: Bool
    
    // The init function is used to create an object.
    
    init(color: UIColor, horsepower: Int, isAutomatic: Bool) {
        self.color = color
        self.horsepower = horsepower
        self.isAutomatic = isAutomatic
    }
}

let blue = UIColor.blueColor()

let car = Car(color: blue, horsepower: 110, isAutomatic: true)
