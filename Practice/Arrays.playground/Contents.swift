import UIKit

// Constant array
let fruits: [String] = ["Apple", "Banana", "Orange", "Mango"]

print("The first fruit is:", fruits[0])
print("The second fruit is:", fruits[1])
print("The last fruit is:", fruits[fruits.count - 1])

// Travel arrays
for fruit in fruits {
    print(fruit)
}

// enumerated()
for (index, fruit) in fruits.enumerated() {
    print("\n The \(index) fruit is: \(fruit)")
}

// Last and the first item
print("The first item is:", fruits.first)
print("The last item is:", fruits.last)

// ?? -> Nil-coalescing -> Define a default value
print(fruits.first ?? "No fruits found")

// Searching in the array
// are there any apples?
print(fruits.contains("apple")) // Case sensative
print(fruits.contains("Apple"))

// Removing an item
//print(fruits.remove(at: 0)) -> It cant be removed from a let array.

var fruitsList: [String] = ["Apple", "Banana", "Orange", "Mango"]

// Remove by index
print("The removed item is: ", fruitsList.remove(at: 0))
print("The list of fruits now contains:", fruitsList)

// Remove all the items
print("The fruits list contains: ", fruitsList.removeAll())

// Add one item at a time
fruitsList.append("Pineapple")
fruitsList.append("Kiwi")
print("The list of fruits now contains:", fruitsList)

// Add multiple items
fruitsList.append(contentsOf: ["Strawberry", "Blueberry"])
print("The list of fruits now contains:", fruitsList)

// Sorting
let ascendingOrderFruits = fruitsList.sorted()
print(ascendingOrderFruits)                 // Alphabet order

// Reversed
let descendingOrderFruits = fruitsList.sorted(by: >)
print(descendingOrderFruits)                // Reversed alphabet order


