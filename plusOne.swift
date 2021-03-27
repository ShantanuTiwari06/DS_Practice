/*
 Example 1:
 Input: digits = [1,2,3]
 Output: [1,2,4]
 Explanation: The array represents the integer 123.

 Example 2:
 Input: digits = [4,3,2,1]
 Output: [4,3,2,2]
 Explanation: The array represents the integer 4321.

 Example 3:
 Input: digits = [0]
 Output: [1]

 1 <= digits.length <= 100
 0 <= digits[i] <= 9
 */

// ------------------------------------------ Time Taken : 4 ms -----------------------------------------
class Solution {
    
    func plusOne(_ digits: [Int]) -> [Int] {
        var answer: [Int] = []
        var carry = 1
        var i = digits.count - 1 // 3, 2, 1, 0, -1
        
        while i >= 0 || carry > 0 {
            // ternary operator.
            // ( Value = Condition ? valueIfTrue : valueIfFalse )
            let aDigit = i >= 0 ? digits[i] : 0 // 1, 2, 3, 4
            let sum = carry + aDigit // 1+1, 0+2, 0+3, 0+4
            answer.append(sum % 10) // 2 % 10 = [2], 2 % 10 = [2, 2], 3 % 10 = [2, 2, 3], 4 % 10 = [2, 2, 3, 4]
            carry = sum / 10 // 0, 0, 0, 0, 0
            i -= 1 //  3, 2, 1, 0, -1
        }
        return answer.reversed()
    }
}

print(Solution().plusOne([4,3,2,1]))

// ------------------------------------------ Time Taken : 0 ms -----------------------------------------
class secondSolution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var ret = digits
        
        for (i, num) in ret.enumerated().reversed() {
            if num < 9 {
                ret[i] += 1
                return ret
            } else {
                ret[i] = 0
            }
        }
        
        if ret[0] == 0 {
            ret.insert(1, at: 0)
        }
        
        return ret
    }
        
}