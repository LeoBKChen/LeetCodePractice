//: [Previous](@previous)

import Foundation

import Foundation
struct Point {
    var x = 0.0, y = 0.0
    mutating func incrementBy(X: Double, Y: Double) {
        x += X
        y += Y
    }
}
var myPoint = Point(x: 2.0, y: 1.0)
myPoint.incrementBy(X: 2.0, Y: 3.0)
print("The Point coordinates are  (\(myPoint.x), \(myPoint.y))")


func increment(b: Int) -> () -> Int {
    var a = 0
    print("b=\(b)")
    func sum() -> Int {
        print("b2=\(b)")
        a += b
        return a
    }
    return sum
}

let incrementByTen = increment(b: 10)
print(incrementByTen)
print(incrementByTen())
print("---")
print(incrementByTen())
print("---")
let incrementByFive = increment(b: 5)
print(incrementByFive())
print("---")
print(incrementByTen())
print("---")



let numbers = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]

print(numbers.flatMap{ $0 })

print(numbers.joined())

class Author {
    var book: Book?
}

class Book {
    var numberOfPages = 100
}

let john = Author()
john.book = Book()

var pages: Int = john.book!.numberOfPages
print("\(pages)")

john.book = nil
pages = john.book?.numberOfPages ?? 0

print("\(pages)")


