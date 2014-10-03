// Thinkful Playground
// Thinkful.com

// Car Playground

// This example covers basic object oriented programming in Swift.

import UIKit

// This is our "base" class called "Car". We also created subclasses of Car called HybridCar, Lowrider, and Slab below.

class Car {
    
    // These are the properies of a Car object. Each Car will have these properies.
    
    var name: String? // Each Car *might* have a name. However, it might not. That's why we have a questionmark to make it an Optional.
    var color: UIColor
    let isAutomatic: Bool
    let horsepower: Int
    var description: String? // The description is also optional.
    var isDriving: Bool
    
    // The init function is used to create an object.
    
    init(name: String?, color: UIColor, isAutomatic: Bool, horsepower: Int, description: String?) {
        self.name = name
        self.color = color
        self.isAutomatic = isAutomatic
        self.horsepower = horsepower
        self.description = description
        isDriving = false // When a Car is first created, it is not moving.
    }
    
    // This is a method called "go". The idea is that the Car would start driving now.
    
    func go() {
        if isDriving == false {
            println("I'm driving now.")
            isDriving = true
        } else {
            println("I'm already driving buddy, we'll get there when we get there.")
        }
    }
    
    // Similarly, a method to stop the Car.
    
    func stop() {
        if isDriving == true {
            println("I'm stopping now.")
            isDriving = false
        } else {
            println("I'm already stopped, gosh...")
        }
    }
}

// We can create a new color like this:

let reallyDarkRed = UIColor(red: 0.2, green: 0.05, blue: 0.03, alpha: 1.0)

// Similarly, we can create a new car like this:

let myCar = Car(name: "Cannonball Express", color: reallyDarkRed, isAutomatic: false, horsepower: 150, description: "This car is named after Casey Jones's train.")

// Since this is a playground, we can see the value of a property like this:

myCar.description

// Let's tell the Car to start driving:

myCar.go()

// Let's be annoying and tell the Car we want it to go again:

myCar.go()

// Ok, let's stop:

myCar.stop()

//myCar.stop()

/* Feel free to uncomment or comment-out any of the Car objects or method calls in this file to see how it changes the console output. To see the console output in a Playground select View->Assistant Editor->Show Assistant Edior. The shortcut is command+option+return. */

// Try creating another Car. Just type "let anotherCar = Car(" and you'll see all the parameter names in Xcode. You can press tab to move to the next parameter.

// Let's make a subclass of Car. The HybridCar will have all the features and functionality of a regular Car, but it can also do things that a regular Car cannot.

class HybridCar: Car {
    func printEnergyInfo() {
        println("Energy conservation is going swell.") // The HybridCar should now print out info about the enviroment and energy consumption.
    }
}

// We can create a new hybrid car like this:

let white = UIColor.whiteColor()
let myHybridCar = HybridCar(name: "Prius", color: white, isAutomatic: true, horsepower: 134, description: "Save the planet, bro.")

// We can tell it to "go" because it has all functionality of a Car object:
//myHybridCar.go()

// We can tell our car to print out the energy info like this:
//myHybridCar.printEnergyInfo()

// How about another sublass of Car?

class Lowrider: Car {
    
    var isBouncing: Bool
    
    override init(name: String?, color: UIColor, isAutomatic: Bool, horsepower: Int, description: String?) {
        isBouncing = false // When a Lowrider is first created, it is not bouncing.
        super.init(name: name, color: color, isAutomatic: isAutomatic, horsepower: horsepower, description: description) // We call "super" so that the Car's init function runs as usual.
        if name == nil { // If there was no "name" passed in as an argument then we'll name it "Lowrider".
            self.name = "Lowrider"
        }
        if self.description == nil { // If there was no "description" passed in as an argument then we'll fill it in with info about the car.
            self.description = "A lowrider is a customized car originated by Mexican Americans in Southern California. Many lowriders have hydraulic suspension systems (modified suspension) so that their ride can change height at the flip of a switch."
        }
    }
    
    func startBouncing() {
        if isBouncing == false {
            println("I'm bouncing now.") // The car should now use its hydraulics to start bouncing up and down.
            isBouncing = true
        } else {
            println("Already bouncing, holmes.")
        }
    }
    
    func stopBouncing() {
        if isBouncing == true {
            println("Turning off the hydraulics now.") // The car should now end the use of hydraulics for the bounce cycle.
            isBouncing = false
        } else {
            println("Already stopped, holmes.")
        }
    }
}

// Let's create a new Lowrider:

let mustard = UIColor(red: 0.75, green: 0.65, blue: 0.0, alpha: 1.0)
let myLowrider = Lowrider(name: nil, color: mustard, isAutomatic: true, horsepower: 135, description: nil)

// We can tell the car to start bouncing up and down:

//myLowrider.startBouncing()

// Ok, one more subclass of Car:

class Slab: Car {
    
    var isPlayingMusic: Bool
    
    override init(name: String?, color: UIColor, isAutomatic: Bool, horsepower: Int, description: String?) {
        isPlayingMusic = false
        super.init(name: name, color: color, isAutomatic: isAutomatic, horsepower: horsepower, description: description) // We call "super" so that the Car's init function runs as usual.
        if name == nil { // If there was no "name" passed in as an argument then we'll name it "Slab"
            self.name = "Slab"
        }
        if description == nil { // If there was no "description" passed in as an argument then we'll fill it in with info about the car.
            self.description = "Slab stands for Slow Low And Bangin'. Originating in the Texas hip-hop community, these cars typically have sound systems with a subwoofer which is ideal for hearing loud bass in hip-hop music."
        }
    }
    
    func startBumpinScrew() {
        if isPlayingMusic == false {
            println("I'm bumpin' Screw!") // The car should now use its sound system to put on a track by the late great Robert Davis AKA DJ Screw who is known by some as the "King of the South" because of his musical contributions as an innovative DJ.
            isPlayingMusic = true
        } else {
            println("We good, it's already playing.")
        }
    }
    
    func turnOffTheMusic() {
        if isPlayingMusic == true {
            println("*silence*") // At this point we should fade out the music.
            isPlayingMusic = false
        } else {
            println("It's already off. Why are you asking to turn it off again?")
        }
    }
}

// Let's create a new Slab:

let candyAppleRed = UIColor(red: 1, green: 0.031, blue: 0, alpha: 1.0) // Pimp C (of UGK) preferred cars of this color.
let mySlab = Slab(name: "Kompressor", color: candyAppleRed, isAutomatic: true, horsepower: 190, description: "Money on the dresser, drive a Kompressor.")

// Let's start driving, but first get the tunes playing.

//mySlab.startBumpinScrew() // The car should start playing music now.
//mySlab.go()

// Feel free to create as many cars as you would like below...

























