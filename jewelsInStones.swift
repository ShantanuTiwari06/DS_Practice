/*
---------------------------- EXPLANATION ------------------------
 
 1.
 Input: jewels = "aA", stones = "aAAbbbb"
 Output: 3
 
 2.
 Input: jewels = "z", stones = "ZZ"
 Output: 0

 */


 // ------------------------------- Time Taken - 4 ms ; Memory - 14.1 MB ------------------------
class Solution {

    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        var available = [Character: Int]()

        for character in stones {
            available[character, default: 0] += 1
//            print("This is available \(available)")
        }
        
        var solution = 0
        let options = available
        
        for word in jewels {
//             print(word)
//            print("This is options[character] 1 : \(String(describing: options[word] ?? 0))")
            if options[word] != nil {
                if options[word] == 0 {
                    solution = 0
                }else{
                    solution +=  options[word]!
                }
            }
        }
        return solution
    }
}

print(Solution().numJewelsInStones("z", "ZZ"))

// ------------------------------- Time Taken - 0 ms ------------------------

class Solution {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        var hoard: Int = 0
    
        for jewel in jewels {
            for stone in stones {
                if jewel == stone { hoard += 1 }
            }
        }
    return hoard
    }
}

print(Solution().numJewelsInStones("z", "ZZ"))
