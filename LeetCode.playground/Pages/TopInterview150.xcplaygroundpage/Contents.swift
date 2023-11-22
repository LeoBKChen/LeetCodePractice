//: [Previous](@previous)

import Foundation

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var map: Dictionary<Int, Int> = [:]
    
    for i in 0..<nums.count {
        if ( map[target - nums[i]] == nil ) {
            map[nums[i]] = i
        }
        else {
            return [map[target - nums[i]]!, i]
        }
    }
    
    return [0,0]
}

let nums = [3,2,4]
let target = 6

print(twoSum(nums, target))

class Solution {
    
    // Hashmap
    // 383. Ransom Note
    // Time Complexity: O(N)
    // Space Complexity: O(N)
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var copyMagazine = magazine
        
        for ran in ransomNote {
            if let index = copyMagazine.firstIndex(of: ran) {
                copyMagazine.remove(at: index)
            } else {
                return false
            }
        }
        
        return true
    }
}

let sol: Solution = Solution()


//func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
//    var hm: [Character : Int] = [:]
//
//    for ch in magazine {
//        hm[ch] = (hm[ch] ?? 0) + 1
//    }
//
//    for ch in ransomNote {
//        if (hm[ch] != nil && hm[ch]! > 0) {
//            hm[ch]! -= 1
//        }
//        else {
//            return false
//        }
//    }
//
//    return true
//}


