//: [Previous](@previous)

import Foundation

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


