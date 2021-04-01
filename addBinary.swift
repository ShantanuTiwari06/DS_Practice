/*
 // --------------------------------- EXPLANATION ---------------------------------

Given two binary strings a and b, return their sum as a binary string.

Example 1:
Input: a = "11", b = "1"
Output: "100"

Example 2:
Input: a = "1010", b = "1011"
Output: "10101"
 
 Therefore in binary:
 0 + 0 = 0
 0 + 1 = 1
 1 + 0 = 1
 1 + 1 = 10 (which is 0 carry 1)
 
*/

// --------------------------------- Time Taken : 36 ms ; Memory : 14.4 MB ---------------------------------
class Solution {
    var solution = ""
    
    func addBinary(_ a: String, _ b: String) -> String {
        var firstNoLength = a.count
        var secondNoLength = b.count
        var firstNo = a
        var secondNo = b
        var carry = 0
        var sum = 0

        while firstNoLength > 0 || secondNoLength > 0 {
//                print(firstNo)
            var lastDigitOfFirstNo = firstNo.suffix(1)
            var lastDigitOfSecondNo = secondNo.suffix(1)
            firstNo = String(firstNo.dropLast())
            secondNo = String(secondNo.dropLast())
//            print("This is carry 1: \(carry)")
          
//            print("This is 1st : \(lastDigitOfFirstNo)")
//            print("This is 2nd : \(lastDigitOfSecondNo)")
            
            if lastDigitOfFirstNo == "" {
                lastDigitOfFirstNo = "0"
            }else if lastDigitOfSecondNo == "" {
                lastDigitOfSecondNo = "0"
            }
            
            sum = Int(lastDigitOfFirstNo)! + Int(lastDigitOfSecondNo)! + carry
            carry = 0
            
            if sum == 0 {
                carry = 0
                solution.append("0")
            } else if sum == 2 {
                carry = 1
                solution.append("0")
//                print("This is solution 1 : \(solution)")
            } else if sum == 3 {
                carry = 1
                solution.append("1")
            } else{
                solution.append("1")
            }
//            print("This is solution 2 : \(solution)")

//            print("This is sum : \(sum)")
//            print("This is carry 2: \(carry)")
//            print("--------------------------")

            firstNoLength -= 1
            secondNoLength -= 1
        }
        if sum == 2 {
            solution.append("1")
        }else if sum == 3 {
            solution.append("1")
        }
        
        
        return String(solution.reversed())
    }
    
}
print(Solution().addBinary("111", "11"))