/*
 --------------------------------- EXPLANATION ---------------------------------
 Example 1:
 Input: num = 38
 Output: 2
 Explanation: The process is
 38 --> 3 + 8 --> 11
 11 --> 1 + 1 --> 2
 Since 2 has only one digit, return it.

 Example 2:
 Input: num = 0
 Output: 0
 
 */
// ---------------------------- Time taken : 12 ms  ----------------------------
class Solution {

    
    func addDigits(_ num: Int) -> Int {
//      print(num) // 4987, 28,
        
        if num < 10 {
            return num // 1
        }
        
        var sumOfDigits = 0
        var temp = num // 4987 , 28 , 10
        
        // loop
        while temp > 0 {
            // 1st - 0+7= 7, 7+8 = 15, 15+9=24, 24+4 = 28
            // 2nd - 0+8= 8, 8+2 = 10
            // 3rd - 0+0= 0, 0+1 =  1
            sumOfDigits = sumOfDigits + temp % 10
            // 1st -  4987/10 = 498,  49,  4,  0
            // 2nd -  28/10   =   2,   0
            // 3rd -  10/10   =   1,   0
            temp = temp / 10
        }
        
        return addDigits(sumOfDigits) // 28, 10 , 1
    }
}
print(Solution().addDigits(4987))

// ---------------------------- Time taken : 8 ms (Best Solution) ----------------------------
class twoSolution {
    func addDigits(_ num: Int) -> Int {
        if num == 0 {
            return 0
        }
        if num % 9 == 0 {
            return 9
        }
        return num % 9
    }
}
print(twoSolution().addDigits(172))