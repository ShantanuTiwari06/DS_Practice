/*
 ------------------------ EXPLANATION  ------------------------
 
 Example 1:
 Input: sentence = "i love eating burger", searchWord = "burg"
 Output: 4
 Explanation: "burg" is prefix of "burger" which is the 4th word in the sentence.

 Example 2:
 Input: sentence = "this problem is an easy problem", searchWord = "pro"
 Output: 2
 Explanation: "pro" is prefix of "problem" which is the 2nd and the 6th word in the sentence, but we return 2 as it's the minimal index.

 Example 3:
 Input: sentence = "i am tired", searchWord = "you"
 Output: -1
 Explanation: "you" is not a prefix of any word in the sentence.

 Example 4:
 Input: sentence = "i use triple pillow", searchWord = "pill"
 Output: 4

 Example 5:

 Input: sentence = "hello from the other side", searchWord = "they"
 Output: -1

 */

 // ------------------ Time Taken : 4 ms ; Memory : 14.7 MB ------------------
class Solution {
    var result = 0
    func isPrefixOfWord(_ sentence: String, _ searchWord: String) -> Int {
        
        let arrByWords = sentence.components(separatedBy: " ")
        print(arrByWords)
        
        for i in arrByWords {
            print(i)
            if i.hasPrefix(searchWord) {
                print("This is i : \(i)")
                print("yes")
                result = arrByWords.firstIndex(of: i)! + 1
                return result
            }else{
                print("here")
                result = -1
            }
        }
        print("This is position : \(result)")
        return result
    }
}
print(Solution().isPrefixOfWord("hello from the other side", "they"))