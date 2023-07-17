import UIKit

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}


class Solution {
    func maxLevelSum(_ root: TreeNode?) -> Int {
        
        var result: Int = 0
        var min: Int = Int.min
        var level: Int = 1
        var stackA: [TreeNode] = []
        var stackB: [TreeNode] = []
        stackA.append(root!)
        
        while (!stackA.isEmpty) {
            var sum: Int = 0
            
            while (!stackA.isEmpty) {
                sum += stackA[0].val
                if let right = stackA[0].right {
                    stackB.append(right)
                }
                if let left = stackA[0].left {
                    stackB.append(left)
                }
                stackA.remove(at: 0)
            }
            if (sum > min) {
                min = sum
                result = level
            }
            (stackA, stackB) = (stackB, stackA)
            level += 1
        }
        
        return result
    }
}


func checkRowValid( board: [[Character]]) -> Bool {
    for i in 0..<9 {
        var map: Set<Character> = []
        
        for j in 0..<9 {
            if (map.contains(board[i][j]) && board[i][j] != ".") {
                print("i=\(i), j=\(j)")
                return false
            }
            else {
                map.insert(board[i][j])
            }
        }
    }
    return true
}

func checkColValid( board: [[Character]]) -> Bool {
    for j in 0..<9 {
        var map: Set<Character> = []
        
        for i in 0..<9 {
            if (map.contains(board[i][j]) && board[i][j] != ".") {
                print("i=\(i), j=\(j)")
                return false
            }
            else {
                map.insert(board[i][j])
            }
        }
    }
    return true
}

func checkSquare( board: [[Character]]) -> Bool {
    
    var left = 0, top = 0
    
    while(left < 9 && top < 9) {
        var map: Set<Character> = []

        for i in 0...2 {
            for j in 0...2 {
                if (map.contains(board[i+top][j+left]) && board[i+top][j+left] != ".") {
                    return false
                }
                else {
                    map.insert(board[i+top][j+left])
                }
            }
        }
        if (left == 6) {
            left = 0
            top += 3
        }
        else {
            left += 3
        }
    }
    
    return true
}

func isValidSudoku(_ board: [[Character]]) -> Bool {
    
    
    if (!checkRowValid(board: board)){
        return false
    }
    
    if (!checkColValid(board: board)){
        return false
    }
    
    if (!checkSquare(board: board)){
        return false
    }
    
    return true
}

let sudoku:[[Character]] = [[".",".",".",".","5",".",".","1","."],[".","4",".","3",".",".",".",".","."],[".",".",".",".",".","3",".",".","1"],["8",".",".",".",".",".",".","2","."],[".",".","2",".","7",".",".",".","."],[".","1","5",".",".",".",".",".","."],[".",".",".",".",".","2",".",".","."],[".","2",".","9",".",".",".",".","."],[".",".","4",".",".",".",".",".","."]]

print(isValidSudoku(sudoku))


func checkStraightLine(_ coordinates: [[Int]]) -> Bool {
    var slope:Double = Double(coordinates[1][0] - coordinates[0][0]) /  Double(coordinates[1][1] - coordinates[0][1])
    slope = slope.isInfinite ? abs(slope) : slope
    
    for i in 1..<coordinates.count {
        var newSlope:Double = Double(coordinates[i][0] - coordinates[i-1][0]) /  Double(coordinates[i][1] - coordinates[i-1][1])
        
        newSlope = newSlope.isInfinite ? abs(newSlope) : newSlope
        print(newSlope)
        if (newSlope != slope) {
            return false
        }
    }
    
    return true
}
let test = [[0,0],[0,5],[5,5],[5,0]]
print(checkStraightLine(test))


func threeSum(_ nums: [Int]) -> [[Int]] {
    
    var negative: [Int: Int] = [:]
    var positive: [Int: Int] = [:]
    var zeros = 0
    
    for num in nums {
        if (num < 0) {
            negative[num] = (negative[num] ?? 0) + 1
        }
        else if (num > 0) {
            positive[num] = (positive[num] ?? 0) + 1
        }
        else{
            zeros += 1
        }
    }

    var result:[[Int]] = []
    
    if (zeros > 0) {
        for (key, _) in negative.enumerated() {
            if (positive[-key] ?? 0 > 0) {
                result.append([0, key, -key])
            }
        }
        
        if (zeros > 2) {
            result.append([0,0,0])
        }
    }
    let negativeList = negative.map { key, value in
        (key, value)
    }
    let positiveList = positive.map { key, value in
        (key, value)
    }

    for i in 0..<negativeList.count {
        for j in i..<negativeList.count {
            if ((j != i) || (j == i && negativeList[i].1 > 1)) {
                let numi = negativeList[i].0
                let numj = negativeList[j].0
                
                if (positive[-numi-numj] ?? 0 > 0) {
                    result.append([numi, numj, -numi-numj])
                }
            }
        }
    }
    for i in 0..<positiveList.count {
        for j in i..<positiveList.count {
            if ((j != i) || (j == i && positiveList[i].1 > 1)) {
                let numi = negativeList[i].0
                let numj = negativeList[j].0
                
                if (negative[-numi-numj] ?? 0 > 0) {
                    result.append([numi, numj, -numi-numj])
                }
            }
        }
    }
    
    return result
}
