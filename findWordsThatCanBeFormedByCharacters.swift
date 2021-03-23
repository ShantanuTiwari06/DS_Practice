// ----------------------------------- Explanation -----------------------------------
/*
Example 1:
Input: words = ["cat","bt","hat","tree"], chars = "atach"
Output: 6
Explanation:
The strings that can be formed are "cat" and "hat" so the answer is 3 + 3 = 6.

Example 2:
Input: words = ["hello","world","leetcode"], chars = "welldonehoneyr"
Output: 10
Explanation:
The strings that can be formed are "hello" and "world" so the answer is 5 + 5 = 10.
*/

// ----------------------------------------- Time Taken : 172 ms ---------------------------------------------
class Solution {
    func countCharacters(_ words: [String], _ chars: String) -> Int {
        var available = [Character: Int]()
        
        for character in chars {
            available[character, default: 0] += 1
//            print("This is available \(available)")
        }
        
        var solution = 0
        
        for word in words {
//            print(word)
            var options = available
            var valid = true
            for character in word {
//                print("This is character \(character)")
//                print("This is options[character] 1 : \(String(describing: options[character] ?? 0))")
                if let option = options[character], option > 0 {
                    options[character] = option - 1
//                    print("This is options[character] 2 : \(String(describing: options[character] ?? 0))")
                } else {
//                    print("elseOne")
                    valid = false
                    break
                }
            }
            
            if valid {
                solution += word.count
            }
        }
        
        return solution
    }
}
print(Solution().countCharacters(["cat","bt","hat","tree", "caaat"], "atach"))

