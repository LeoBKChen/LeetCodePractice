//: [Previous](@previous)

import Foundation

func maximumBeauty(_ nums: [Int], _ k: Int) -> Int {
    var res: Int = 0
    var (left, right): (Int, Int) = (0, 0)
    let sortedNums = nums.sorted{ $0 < $1 }
    
    while (right < nums.count) {
        while(right < nums.count && sortedNums[right] <= (sortedNums[left] + (k * 2))) {
            right += 1
        }
        res = max(res, right - left)
        left += 1
    }
    
    return res
}

let nums = [13,46,71]
let k = 29

print(maximumBeauty(nums, k))

func minSpeedOnTime(_ dist: [Int], _ hour: Double) -> Int {
    
    if ( hour <= Double(dist.count - 1) ) {
        return -1
    }

    var res: Int = 1
    var cost: Double = 0.0
    var right: Int = Int(1e7)
    var left: Int = 1
    
    while (left <= right) {
        let mid = (right + left) / 2
        print("mid= \(mid), cost=\(cost)")
        cost = dist.dropLast().reduce(0, { $0 + (ceil(Double($1)/Double(mid))) })
        cost += Double(dist.last!) / Double(mid)

        if (cost > hour) {
            left = mid + 1
        }
        else {
            right = mid - 1
            res = mid
        }
    }
    
    return res
}

let dist = [1,1]

let hour = 1.0

print(minSpeedOnTime(dist, hour))

func peakIndexInMountainArray(_ arr: [Int]) -> Int {
    var left = 0
    var right = arr.count - 1
    
    while (left <= right) {
        let mid = (right + left) / 2
        
        if (arr[mid] < arr[mid+1]) {
            left = mid + 1
        }
        else if (arr[mid] < arr[mid-1]){
            right = mid - 1
        }
        else {
            return mid
        }
    }
    
    return 0
}

let arr = [0,2,10,30,5,2]
print(peakIndexInMountainArray(arr))

func myPow(_ x: Double, _ n: Int) -> Double {
    var res: Double = 1.0
    
    if (x == 0.0) {
        return 0.0
    }
    
    if (n == 0) {
        return 1.0
    }
    else if (n > 0) {
        for _ in 0..<n {
            res *= x
        }
    }
    else if (n < 0){
        for _ in 0..<abs(n) {
            res /= x
        }
    }
    
    return res
}

let x = 23.0
let n = 0
print(myPow(x, n))


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
    public func desc() {
        print("\(val) ")
        if let next = next {
            next.desc()
        }
    }
}

func reverse(_ root: ListNode) -> ListNode? {
    var tmp: ListNode? = root
    var cur: ListNode? = root
    var prev: ListNode? = nil
    
    while (cur != nil) {
        tmp = cur!.next
        cur!.next = prev
        
        prev = cur
        cur = tmp
    }
    
    return prev
}

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    var res: ListNode? = nil
    var curRes: ListNode? = nil
    var rl1: ListNode?
    var rl2: ListNode?
    var carry: Int = 0
    
    // reverse the two list
    if let l1root = l1,
       let l2root = l2 {
        rl1 = reverse(l1root)
        rl2 = reverse(l2root)
    }
    else {
        return res
    }
    
    // calculate each new node and add it to new list
    // while there is still value to calculate
    
    repeat {
    
        var val = (rl1?.val ?? 0) + (rl2?.val ?? 0) + carry
        
        carry = 0
        
        if (val > 9) {
            carry = 1
            val -= 10
        }
        
        if (res == nil) {
            res = ListNode(val, nil)
            curRes = res
        }
        else {
            let tmp = ListNode(val, nil)
            curRes!.next = tmp
            curRes = tmp
        }
        
        rl1 = rl1?.next
        rl2 = rl2?.next
        
    }
    while(rl1 != nil || rl2 != nil || carry == 1)
    
    res = reverse(res!)
            
    return res
}

func makeList(arr: [Int]) -> ListNode {
    var root: ListNode? = nil
    
    for num in arr {
        let node = ListNode(num, nil)
        
        node.next = root
        root = node
    }
    
    return root!
}

let l1 = ListNode(7, nil)
l1.next = ListNode(2, ListNode(4, ListNode(3,nil)))

let l2 = ListNode(5, ListNode(6, ListNode(4, nil)))

addTwoNumbers(l1, l2)?.desc()

func longestSubsequence(_ arr: [Int], _ difference: Int) -> Int {
    var dp: Dictionary<Int, Int> = [:]
    
    
    for num in arr {
        let prev = num - difference
        dp[num] = dp[prev, default: 0] + 1
    }
    
    
    return dp.values.max() ?? 0
}

let arrr = [1,5,7,8,5,3,4,2,1]
let diff = -2

print(longestSubsequence(arrr, diff))



func helper(visited: inout [Bool], inStack: inout [Bool], graph: [[Int]], cur: Int) -> Bool {
    if (inStack[cur]) {
        return true
    }
    
    if (visited[cur]) {
        return false
    }
    
    visited[cur] = true
    inStack[cur] = true

    for node in graph[cur] {
        if (helper(visited: &visited, inStack: &inStack, graph: graph, cur: node) ) {
            return true
        }
    }

    inStack[cur] = false
    
    return false
}

func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
    var graph: [[Int]] = Array(repeating: [], count: numCourses)
   
    var inStack: [Bool] = Array(repeating: false, count: numCourses)
    var visited: [Bool] = Array(repeating: false, count: numCourses)
    
    prerequisites.forEach { prerequisite in
        graph[prerequisite[0]].append(prerequisite[1])
    }
    
    for i in 0..<numCourses {
        if (helper(visited: &visited, inStack: &inStack, graph: graph, cur: i)) {
            return false
        }
    }
    
    return true
}



func eventualSafeNodes(_ graph: [[Int]]) -> [Int] {
    let n = graph.count
    var inStack: [Bool] = Array(repeating: false, count: n)
    var visited: [Bool] = Array(repeating: false, count: n)
    var res: [Int] = []
    
    for i in 0..<n {
        helper(visited: &visited, inStack: &inStack, graph: graph, cur: i)
    }
    
    for i in 0..<n {
        if (!inStack[i]) {
            res.append(i)
        }
    }
    
    return res
}

let graph = [[1,2],[2,3],[5],[0],[5],[],[]]
print(eventualSafeNodes(graph))
