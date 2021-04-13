/*
 // -------------------------------- EXPLANATION --------------------------------

 Given two string arrays word1 and word2, return true if the two arrays represent the same string, and false otherwise.

 A string is represented by an array if the array elements concatenated in order forms the string.

  

 Example 1:

 Input: word1 = ["ab", "c"], word2 = ["a", "bc"]
 Output: true
 Explanation:
 word1 represents string "ab" + "c" -> "abc"
 word2 represents string "a" + "bc" -> "abc"
 The strings are the same, so return true.

 Example 2:

 Input: word1 = ["a", "cb"], word2 = ["ab", "c"]
 Output: false

 Example 3:

 Input: word1  = ["abc", "d", "defg"], word2 = ["abcddefg"]
 Output: true

 */

// -------------------------------- Time Taken : 8 ms ; Memory : 14.6 MB --------------------------------
class Solution {
    func arrayStringsAreEqual(_ word1: [String], _ word2: [String]) -> Bool {
        var wordOne = ""
        var wordTwo = ""
        
        for i in word1 {
            wordOne.append(i)
        }
       
        for i in word2 {
            wordTwo.append(i)
        }

        if wordOne == wordTwo {
            return true
        }else{
            return false
        }

    }
}
print(Solution().arrayStringsAreEqual(["abc", "d", "defg"], ["abcddefg"]))

// -------------------------------- Time Taken : 4 ms -------------------------------
class twoSolution {
    func arrayStringsAreEqual(_ word1: [String], _ word2: [String]) -> Bool {
        let first = word1.reduce("", +)
        let second = word2.reduce("", +)
        return first == second
    }
}