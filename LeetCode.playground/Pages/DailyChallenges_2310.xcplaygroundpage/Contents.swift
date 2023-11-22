//: [Previous](@previous)

import Foundation

func solution(board: [[Character]], word: String) -> Int {
    var ans = 0
    var word = Array(word)
    
    if (board[0].count >= word.count) {
        for i in 0..<board.count {
            var left = 0
            while (left <= board[0].count - word.count) {
                var isValid = true
                while(left < board[0].count && word[0] != board[i][left]) {
                    left += 1
                }
                
                if (left > board[i].count - word.count) {
                    break
                }
                
                for j in 0..<word.count {
                    if(word[j] != board[i][left+j]) {
                        isValid = false
                        break
                    }
                }
                if (isValid) {
                    ans += 1
                }
                left += 1
            }
        }
    }
    
    if (board.count >= word.count) {
        for i in 0..<board[0].count {
            var left = 0
            while (left <= board.count - word.count) {
                // find start point
                var isValid = true
                while(left < board.count && word[0] != board[left][i]) {
                    left += 1
                }
                
                if (left > board.count - word.count) {
                    break
                }
                
                for j in 0..<word.count {
                    
                    if(word[j] != board[left+j][i]) {
                        isValid = false
                        break
                    }
                }
                if (isValid) {
                    ans += 1
                }
                left += 1
            }
        }
    }
    
    if (board[0].count >= word.count && board.count >= word.count) {
        for i in 0..<board[0].count {
            var leftTop = 0
            print("i = \(i)")
            while ((leftTop <= board[0].count - word.count - i) && (leftTop <= board.count - word.count)) {
                var isValid = true
                print(leftTop)
                if(word[0] != board[i+leftTop][leftTop]) {
                    leftTop += 1
                    continue
                }
                print("yo")
                for j in 0..<word.count {
                    print("i = \(leftTop+j), j = \(i+leftTop+j)")
                    if(word[j] != board[leftTop+j][i+leftTop+j]) {
                        isValid = false
                        break
                    }
                }
                if (isValid) {
                    ans += 1
                }
                leftTop += 1
            }
        }
    }
    
    return ans
}

solution(board: [["l","l","l","l","l"],
                 ["o","o","o","o","o"],
                 ["l","l","l","l","l"]], word: "lol")


class MyHashMap {
    var bucket: [[(Int, Int)]] = []
    let size: Int = 500

    init() {
        self.bucket = Array(repeating: [(Int, Int)](), count: self.size)
    }
    
    func put(_ key: Int, _ value: Int) {
        let index = key % self.size
        
        for i in 0..<bucket[index].count {
            if (bucket[index][i].0 == key) {
                bucket[index][i].1 = value
                return
            }
        }
        
        bucket[index].append((key, value))
    }
    
    func get(_ key: Int) -> Int {
        let index = key % self.size
        
        for i in 0..<bucket[index].count {
            if (bucket[index][i].0 == key) {
                return bucket[index][i].1
            }
        }
        
        return -1
    }
    
    func remove(_ key: Int) {
        let index = key % self.size
        
        for i in 0..<bucket[index].count {
            if (bucket[index][i].0 == key) {
                bucket[index].remove(at: i)
            }
        }
    }
}

var map: MyHashMap = MyHashMap()

print(map.remove(2))
print(map.get(2))
print(map.put(22,2))
print(map.get(22))
print(map.get(2))
print(map.put(22,3))
print(map.get(22))
