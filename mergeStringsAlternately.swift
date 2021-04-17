/*
 ---------------------- EXPLANATION  ----------------------
 Example 1:

 Input: word1 = "abc", word2 = "pqr"
 Output: "apbqcr"
 Explanation: The merged string will be merged as so:
 word1:  a   b   c
 word2:    p   q   r
 merged: a p b q c r

 Example 2:

 Input: word1 = "ab", word2 = "pqrs"
 Output: "apbqrs"
 Explanation: Notice that as word2 is longer, "rs" is appended to the end.
 word1:  a   b
 word2:    p   q   r   s
 merged: a p b q   r   s

 Example 3:
 Input: word1 = "abcd", word2 = "pq"
 Output: "apbqcd"
 Explanation: Notice that as word1 is longer, "cd" is appended to the end.
 word1:  a   b   c   d
 word2:    p   q
 merged: a p b q c   d

 */


//---------------------- Time Taken : 4 ms ; Memory : 14.2 MB  ----------------------

class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
     
        var result = ""
        var firstStr = word1
        var secondStr = word2
        
        var lenghtOfLooping = 0
        if word1.count > word2.count {
            lenghtOfLooping = word1.count
        }else{
            lenghtOfLooping = word2.count
        }
        print(lenghtOfLooping)
        
        for _ in 1...lenghtOfLooping {
            print(firstStr)
            if firstStr.isEmpty == false {
                result.append(firstStr.first!)
                firstStr = String(firstStr.dropFirst())
            }
            
            if secondStr.isEmpty == false {
                result.append(secondStr.first!)
                secondStr = String(secondStr.dropFirst())
            }
        }
        
        return result
    }
}
print(Solution().mergeAlternately("abcd", "pq"))

//---------------------- Time Taken : 0 ms  ----------------------

class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        let word1 = Array(word1), word2 = Array(word2), c1 = word1.count, c2 = word2.count
        var result = [Character]()
        for i in 0..<(2 * max(c1, c2)) {
            let j = i / 2
            if i % 2 == 0 {
                if j < c1 { result.append(word1[j]) }
            } else {
                if j < c2 { result.append(word2[j]) }
            }
        }
        return String(result)
    }
}