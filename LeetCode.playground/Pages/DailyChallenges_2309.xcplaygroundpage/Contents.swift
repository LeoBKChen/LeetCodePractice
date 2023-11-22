//: [Previous](@previous)

import Foundation

func removeDuplicateLetters(_ s: String) -> String {
    var stack = [Character]()
    var inserted = Set<Character>()
    var hashMap = Dictionary(s.map{($0, 1)}, uniquingKeysWith: +)
    print(hashMap)
    for char in s {
        while !stack.isEmpty && char <= stack.last! && hashMap[stack.last!]! > 0 && !inserted.contains(char) {
            inserted.remove( stack.popLast()! )
        }
        if !inserted.contains(char) {
            stack.append(char)
            inserted.insert(char)
        }
        hashMap[char]! -= 1
    }
    return stack.map(String.init).joined(separator: "")
}

let s = "bcabc"
print(removeDuplicateLetters(s))

func candy(_ ratings: [Int]) -> Int {
    let n = ratings.count
    var candies: [Int] = Array(repeating: 1, count: n)
    
    for i in 0..<(n-1) {
        if (ratings[i+1] > ratings[i]) {
            candies[i+1] = candies[i] + 1
        }
    }
    
    for i in (1..<n).reversed() {
        if (ratings[i-1] > ratings[i] && candies[i-1] <= candies[i]) {
            candies[i-1] = candies[i] + 1
        }
    }
    print(candies)
    return candies.reduce(into: Int(0), { $0 += $1 })
}

let ratings = [0,1,2,6,5,4,3]
print(candy(ratings))


func countOrders(_ n: Int) -> Int {
    let modBase: Int = Int((1e+9) + 7)
    var res = 1
    
    if (n == 1) {
        return 1
    }
    else {
        for i in 2..<(n+1) {
            res = (res * (2 * i - 1) * i) % modBase
        }
    }
    
    return res
}

print(countOrders(2))

//: [Next](@next)
let test1 = "1"
let test2 = "qq"

let flag1 = Int(test1) ?? 0
let flag2 = Int(test2) ?? 0
print(flag1)
print(flag2)
