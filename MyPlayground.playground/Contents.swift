/*  Date: Sep 17th 2024
    Subject: iOS Ready Bootcamp
    Author: Randy Chang
    email: randy.w.chang@gmail.com
    Description: Homework assignment deliverable for "Introduction to Swift" - The Magical Creature Catalog
*/


// Part 1: Creating Structs
// 1.1 Define a "Creature" struct
struct Creature {
    var name: String
    var description: String
    var isGood: Bool
    var magicPower: Int
    //  3.2 Adding a computed property
    var ability: String {
        return "\(name) hasa special power ablity level of \(fibonacciAbility(n: self.magicPower))"
    }
    
    // Part 4: Mythical Creature Interactions
    // 4.1 Add function "interactWith)
    func interactWith (anotherCreature: Creature) {
        // 4.2 use swith statement to check the isGood property of both creatures
        switch (self.isGood, anotherCreature.isGood) {
        case (true, true):
            print("\(name) and \(anotherCreature.name) are buddies and allies")
        case (true, false):
            print("\(name) and \(anotherCreature.name) are enemies")
        case (false, true):
            print("\(name) and \(anotherCreature.name) are enemies")
        case (false, false):
            print("\(name) and \(anotherCreature.name) are the axis of evil")
        
        }
    }
}

// 1.2 Creating 3 different creatures that conform to the Creature struct
let Unicorn = Creature(name: "Poppy", description: "A lovely horselike creature with horns", isGood: true, magicPower: 5)
let Phoenix = Creature(name: "Horus", description: "A mythical bird rise from the ashes", isGood: true, magicPower: 8)
let Dragon = Creature(name: "Balerion", description: "A powerful creature that can fly and blow fireballs", isGood: false, magicPower: 10)


// Part 2: Fibonacci Creature Abilities
// 2.1 Create a function => fibonacciAbility
func fibonacciAbility(n: Int) -> Int {
// finobanacci sequence n ==> {0, 1, 1, 2, 3, 5, 8, 13, 21, 34 ....m}
    if n <= 1 {
        return 0
    } else if n <= 3 {
        return 1
    }
    return fibonacciAbility(n: n - 1) + fibonacciAbility(n: n - 2)
}

// 2.1 Test: the fibonnacciAbility function
/* for nth_input in Range(1...10) {
    var fib_val = fibonacciAbility(n: nth_input)
    print("the nth parameter: \(nth_input) is \(fib_val)")
} */

// 2.2 Test: the computed property of "ability"
/* print(Unicorn.ability)
   print(Dragon.ability)
   print(Phoenix.ability) */

// Part 3: The Mythical Creature
// 3.1 Create an array to hold all 3 creatures
var creatureCatalog: [Creature] = [Unicorn, Dragon, Phoenix]

// 3.2 Create a function that takes the array as a param and prints out a desc for each
func describeCreatureDesc(creatures: [Creature]) {
    for i in 0..<creatures.count {
        let creature = creatures[i]
        print("\(creature.name). \(creature.description). \(creature.ability).")
        
        //4.3 Call interactWith function for each pair
        for j in 0..<creatures.count where i != j {
            creature.interactWith(anotherCreature: creatures[j])
        }
        
    }
}

// Part 3 Test describeCreatureDesc function
print(describeCreatureDesc(creatures: creatureCatalog))




