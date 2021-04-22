/*
 --------------- EXPLANATION ---------------
 Write a function that reverses a string. The input string is given as an array of characters s.

  

 Example 1:

 Input: s = ["h","e","l","l","o"]
 Output: ["o","l","l","e","h"]

 Example 2:

 Input: s = ["H","a","n","n","a","h"]
 Output: ["h","a","n","n","a","H"]

 */


// --------------- Time Taken : 272 ms ; Memory : 18.7 MB ---------------
// With Implicit Function.

class Solution {
    func reverseString(_ s: inout [Character]) {
        s = s.reversed()
        print(s)
    }
}



var string: [Character] =  ["h","e","l","l","o"]
Solution().reverseString(&string)


// --------------- Time Taken : 160 ms ---------------
// Without Implicit Function.

class twoSolution {
    func reverseString(_ s: inout [Character]) {
        var left = 0
        var right = s.count - 1

        while (left < right) {
            let leftChar = s[left]
            let rightChar = s[right]
            s[left] = rightChar
            s[right] = leftChar
            left += 1
            right -= 1
        }
    }
}
