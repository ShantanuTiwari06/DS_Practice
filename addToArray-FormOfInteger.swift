/*
  ---------------------------- EXPLANATION  --------------------------------
 Example 1:
Input: A = [1,2,0,0], K = 34
Output: [1,2,3,4]
Explanation: 1200 + 34 = 1234
 
 Example 2:
 Input: A = [2,7,4], K = 181
 Output: [4,5,5]
 Explanation: 274 + 181 = 455

 Example 3:
 Input: A = [2,1,5], K = 806
 Output: [1,0,2,1]
 Explanation: 215 + 806 = 1021

 Example 4:
 Input: A = [9,9,9,9,9,9,9,9,9,9], K = 1
 Output: [1,0,0,0,0,0,0,0,0,0,0]
 Explanation: 9999999999 + 1 = 10000000000
 ------------------------------------------------------------------------------------------------

 Note : You deactivate commented lines of print in code to see step by step values & for 
 better understanding, HAPPY CODING!.
 */


// ----------------------------- Time Taken : Runtime: 236 ms ; Memory Usage: 15 MB  ---------------------------

class Solution {

func addToArrayForm(_ A: [Int], _ K: Int) -> [Int] {
        var answer: [Int] = []
        var carry = K
        var i = A.count - 1
//        print(i)
    
        // i =  3, 2, 1, 0 ; carry = 12, 1, 0, 0
        while i >= 0 || carry > 0 {
            // ternary operator.
            // ( Value = Condition ? valueIfTrue : valueIfFalse )
            let aDigit = i >= 0 ? A[i] : 0
//            print("This is aDigit \(aDigit)") // 4, 3, 2, 1
            // sum = 12 + 4
            let sum = carry + aDigit // 12+4, 1+3, 0+2, 0+1
//            print("This is sum \(sum)") // 16 , 4, 2, 1
            answer.append(sum % 10) // 16 % 10, 4 % 10, 2 % 10, 1 % 10
//            print("This is answer \(answer)") // [6], [6,4], [6,4,2], [6,4,2,1]
            
            carry = sum / 10 // 12, 1, 0, 0, 0
//            print("This is carry \(carry)")
            i -= 1 //  3, 2, 1, 0, -1
//            print("This is i \(i)")
//            print("-----------------------------")
        }
    
        return answer.reversed() // [1, 2, 4, 6]
    }
}
print(Solution().addToArrayForm([1,2,3,4], 12))
