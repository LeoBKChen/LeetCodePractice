//: [Previous](@previous)

import Foundation
//
//    s.forEach { c in
//        mapS[c, default: 0] += 1
//    }
//
//    t.forEach { c in
//        mapT[c, default: 0] += 1
//    }

func ord(_ char: Character) -> UInt8? {
    char.asciiValue
}

func ord(_ str: String) -> UInt8? {
    Character(str).asciiValue
}


func shortestPathAllKeys(_ grid: [String]) -> Int {
    let (m, n) = (grid.count, grid[0].count)
    var queue: [(Int, Int, Int, Int)] = []

//    seen['key'] is only for BFS with key state equals 'keys'
    var seen: Dictionary<Int, [(Int, Int)]> = [:]

    var keySet: Set<Character> = []
    var lockSet:  Set<Character> = []
    var allKeys: Int = 0
    var (startR, startC) = (-1, -1)

    var ans: Int = -1
    for i in 0..<m {
        grid[i].enumerated().forEach { j, cell in
            if (cell <= "f" && cell >= "a") {
                allKeys += (1 << (ord(cell)! - ord("a")!))
                keySet.insert(cell)
            }
            else if (cell <= "F" && cell >= "A") {
                lockSet.insert(cell)
            }
            else if (cell == "@") {
                (startR, startC) = (i, j)
            }
        }
    }
    queue.append((startR, startC, 0, 0))
    seen[0, default: []].append((startR, startC))

    while (!queue.isEmpty && ans == -1) {
        let (curR, curC, keys, dist) = queue.removeFirst()
        let dirs: [(Int, Int)] = [(0, 1), (1, 0), (-1, 0), (0, -1)]
        dirs.forEach { dr, dc in
            let (newR, newC) = (curR + dr, curC + dc)
            // If this cell (new_r, new_c) is reachable.
            if ( 0 <= newR && newR < m && 0 <= newC && newC < n
                && Array(grid[newR])[newC] != Character("#") ) {
                let cell = Array(grid[newR])[newC]
                if ( keySet.contains(cell) &&
                    ( (1 << (ord(cell)! - ord("a")!)) & keys == 0) ) {

                    let newKeys = (keys | (1 << (ord(cell)! - ord("a")!)))
                    if (newKeys == allKeys) {
                        ans = dist + 1
                        return
                    }
                    seen[newKeys, default: []].append((newR, newC))
                    queue.append((newR, newC, newKeys, dist + 1))
                }
                else if (lockSet.contains(cell) &&
                         (keys & (1 << (ord(cell)! - ord("A")!))) == 0 ) {
                }
                else if (!seen[keys, default:[]].contains { $0 == (newR, newC) } ) {
                    seen[keys, default:[]].append((newR, newC))
                    queue.append((newR, newC, keys, dist + 1))
                }
            }
        }
    }
    return ans
}


let grid = ["@.a..","###.#","b.A.B"]
print(shortestPathAllKeys(grid))

func helper(adjs: [[Int]], edges: [[Int]],visited: [Bool], succProb: [Double], start: Int, end: Int, prob: Double) -> Double {
    var ans: Double = 0.0

    adjs[start].forEach { edgesIndex in

        let target = start == edges[edgesIndex][0] ? edges[edgesIndex][1] : edges[edgesIndex][0]

        print("start=\(start), edgesIndex=\(edgesIndex), target=\(target)")
        if (target == end) {
            ans = max(ans, prob * succProb[edgesIndex])
        }
        else if (!visited[target]) {
            var visitedCopy = visited
            visitedCopy[target].toggle()

            ans = max(ans, helper(adjs: adjs, edges: edges, visited: visitedCopy, succProb: succProb, start: target, end: end, prob: prob * succProb[edgesIndex]))
        }
    }
    print("prob = \(prob), ans=\(ans)")
    return ans
}


func maxProbability(_ n: Int, _ edges: [[Int]], _ succProb: [Double], _ start: Int, _ end: Int) -> Double {
    var prob: Double = 0.0
    var adjGraph: [[Int]] = Array(repeating: [], count: n)
    var visited: [Bool] = Array(repeating: false, count: n)

    for i in 0..<edges.count {
        // store the index of the start point's edges connected to others
        adjGraph[edges[i][0]].append(i)
        adjGraph[edges[i][1]].append(i)

    }

    print("adjGraph=\(adjGraph)")

    prob = helper(adjs: adjGraph, edges: edges, visited: visited, succProb: succProb, start: start, end: end, prob: 1)

    return prob
}

let n = 5
let edges = [[1,4],[2,4],[0,4],[0,3],[0,2],[2,3]]
let succ = [0.37,0.17,0.93,0.23,0.39,0.04]
print(maxProbability(n, edges, succ, 3, 4))

func kSmallestPairs(_ nums1: [Int], _ nums2: [Int], _ k: Int) -> [[Int]] {
    var ans: [[Int]] = []

    nums1.forEach { num1 in
        nums2.forEach {
            ans.append([num1, $0])
        }
    }

    if (k >= ans.count) {
        return ans
    }
    else {
        ans.sort {
            $0.reduce(0, { $0 + $1 }) < $1.reduce(0, { $0 + $1 })
        }

        return Array(ans[0..<k])
    }
}
let nums1 = [1,2]
let nums2 = [3]
print(kSmallestPairs(nums1, nums2, 3))



func wordPattern(_ pattern: String, _ s: String) -> Bool {
    let sArr = s.split(separator: " ")
    var map: Dictionary<Character, String> = [:]

    if (sArr.count != pattern.count) {
        return false
    }

    for i in 0..<pattern.count {

        let pIndex = pattern.index(pattern.startIndex, offsetBy: i)
        let x = pattern[pIndex]
        let y = String(sArr[i])

        if let existY = map[x] {
            if existY != y {
                return false
            }
        }
        else if (map.contains {$1 == y}) {
            return false
        }
        else {
            map[x] = y
        }
    }

    return true
}

let pat = "abba"
let st = "dog dog dog dog"
print(wordPattern(pat, st))


func isIsomorphic(_ s: String, _ t: String) -> Bool {

    var mapS: Dictionary<Character, Int> = [:]
    var mapT: Dictionary<Character, Int> = [:]
    var arrS: [Int] = Array(repeating: 0, count: s.count)
    var arrT: [Int] = Array(repeating: 0, count: s.count)
    var i: Int = 0

    s.enumerated().forEach { sIndex, c in
        if(mapS[c] == nil) {
            mapS[c] = i
            i += 1
        }
        arrS[sIndex] = mapS[c]!
    }

    i = 0

    t.enumerated().forEach { tIndex, c in
        if(mapT[c] == nil) {
            mapT[c] = i
            i += 1
        }
        arrT[tIndex] = mapT[c]!
    }


    if (arrS.elementsEqual(arrT)) {
        return true
    }
    else {
        return false
    }
}

let s = "bbbaaaba"
let t = "aaabbbba"
print(isIsomorphic(s, t))

func equalPairs(_ grid: [[Int]]) -> Int {

    let m = grid[0].count
    var result = 0

    var mp: [Int: Int] = [:]

    for arr in grid {
        mp[arr.hashValue] = (mp[arr.hashValue] ?? 0) + 1
    }

    for j in 0..<m {
        result += mp[ grid.map { $0[j] }.hashValue] ?? 0
    }

    return result
}

let grid = [[3,2,1],[1,7,6],[2,7,7]]
print(equalPairs(grid))

func gameOfLife(_ board: inout [[Int]]) {
    let n = board.count, m = board[0].count
    let dirs: [(Int, Int)] = [(-1,-1), (-1,0), (-1, 1), (0, -1)
                             , (0,1), (1,-1), (1,0), (1,1)]
    var tmp: [[Int]] = Array(repeating: Array(repeating: 0, count: m), count: n)

    for i in 0..<n {
        for j in 0..<m {
            for dir in dirs {
                let x = i + dir.0, y = j + dir.1
                if ((x < n) && (x > -1) &&
                    (y < m) && (y > -1)) {
                    tmp[x][y] += board[i][j]
                }
            }
        }
    }

    for i in 0..<n {
        for j in 0..<m {

            if (board[i][j] == 1) {
                if (tmp[i][j] < 2 || tmp[i][j] > 3) {
                    board[i][j] = 0
                }
            }
            else if (tmp[i][j] == 3){
                board[i][j] = 1
            }
        }
    }
}


func summaryRanges(_ nums: [Int]) -> [String] {

    var result: [String] = []
    var start: Int = nums[0]
    var end: Int = 0
    for num in nums.dropFirst() {

        if (num - end == 1) {
            end = num
            continue
        }
        else if (end > start) {
            result.append("\(start)->\(end)")
        }
        else {
            result.append("\(start)")
        }

        start = num
        end = num
    }

    if (end > start) {
        result.append("\(start)->\(end)")
    }
    else {
        result.append("\(start)")
    }

    return result
}

class Solution {
    func setZeroes(_ matrix: inout [[Int]]) {
        // var (i, j) :(Int, Int) = (0, 0)
        var (n, m) :(Int, Int) = (matrix.count, matrix[0].count)
        var zeroList :[(Int, Int)] = []

        for i in 0..<n {
            for j in 0..<m {
                if (matrix[i][j] == 0) {
                    zeroList.append((i, j))
                }
            }
        }

        for (i, j) in zeroList {
            matrix[i] = matrix[i].map { _ in 0 }
            for k in 0..<n {
                matrix[k][j] = 0
            }
        }
    }
}

func rotate(_ matrix: inout [[Int]]) {
    let n = matrix.count
    var tmp = [0,0,0,0]
    var leftTop = 0, right = n-1
    var indexes = [(0,0), (0,0), (0,0), (0,0)]
    while (leftTop < right) {
        print("first: leftTop=\(leftTop), right=\(right)")
        for i in leftTop..<right {
            indexes = [(leftTop, i), (i, n-leftTop-1), (n-leftTop-1, n-i-1), (n-i-1,leftTop)]

            tmp[0] = matrix[indexes[0].0][indexes[0].1]
            print("second: tmp[0]=\(tmp[0])")

            tmp[1] = matrix[indexes[1].0][indexes[1].1]
            print("second: tmp[1]=\(tmp[1])")

            tmp[2] = matrix[indexes[2].0][indexes[2].1]
            print("second: tmp[2]=\(tmp[2])")

            tmp[3] = matrix[indexes[3].0][indexes[3].1]
            print("second: tmp[3]=\(tmp[3])")

            matrix[indexes[1].0][indexes[1].1] = tmp[0]
            matrix[indexes[2].0][indexes[2].1] = tmp[1]
            matrix[indexes[3].0][indexes[3].1] = tmp[2]
            matrix[indexes[0].0][indexes[0].1] = tmp[3]
        }
        leftTop += 1
        right -= 1
    }
}

var test = [[1,2,3],[4,5,6],[7,8,9]]
rotate(&test)
print(test)


func spiralOrder(_ matrix: [[Int]]) -> [Int]
{
    if matrix.isEmpty { return [] }

    // would be simpler if we could use existing math functions for the matrix rotation :\
    var rotatedMatrix: [[Int]] = []
    for j in matrix[0].indices.reversed()
    {
        print("j=\(j)")
        rotatedMatrix.append((1..<matrix.count).reduce(into: [Int]()) {
            row, i in
            row.append(matrix[i][j])
            print("row=\(row), i =\(i)")
        })
    }
    print("rotatedMatrix=\(rotatedMatrix)")
    return matrix[0] + spiralOrder(rotatedMatrix)
}



////: [Next](@next)
