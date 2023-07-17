//: [Previous](@previous)

import Foundation


// 0616
// 1569. Number of Ways to Reorder Array to Get Same BST

let mod: Int = Int(1e9+7)
var table: [[Int]] = []
func dfs(_ nums: [Int]) -> Int {
    let m = nums.count
    
    if (m < 3) { return 1 }
    var leftNodes: [Int] = [], rightNodes: [Int] = []
    
    for i in 1..<m {
        if (nums[i] < nums[0]) {
            leftNodes.append(nums[i])
        }
        else {
            rightNodes.append(nums[i])
        }
    }
    
    let leftWays = dfs(leftNodes) % mod
    let rightWays = dfs(rightNodes) % mod
    
    return (((leftWays * rightWays) % mod) * table[m - 1][leftNodes.count]) % mod
}

func numOfWays(_ nums: [Int]) -> Int {
    let m = nums.count
    nums.reduce(<#T##initialResult: Result##Result#>, <#T##nextPartialResult: (Result, Int) throws -> Result##(Result, Int) throws -> Result##(_ partialResult: Result, Int) throws -> Result#>)
    if (m < 3) { return 0 }
    table = Array(repeating: [], count: m + 1)
    table[0] = [1]
    for i in 1..<(m+1) {
        table[i] = Array(repeating: 1, count: i+1)
        for j in 1..<i {
            table[i][j] = (table[i - 1][j - 1] + table[i - 1][j]) % mod
        }
    }
    return (dfs(nums) - 1 ) % mod
}

let nums = [2,1,3]
print(numOfWays(nums))

//: [Next](@next)
