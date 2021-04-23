/*
 ---------------------------- EXPLNATION  ----------------------------
 Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.

 Assume the environment does not allow you to store 64-bit integers (signed or unsigned).

 Example 1:
 Input: x = 123
 Output: 321

 Example 2:
 Input: x = -123
 Output: -321

 Example 3:
 Input: x = 120
 Output: 21

 Example 4:
 Input: x = 0
 Output: 0

 */

 
 // ---------------------------- Time Taken : 8 ms ; Memory : 13.9 MB ----------------------------
class Solution {
   
    func reverse(_ x: Int) -> Int {
        
        var originalNo = x
//        var originalNo : Int32 = Int32(x)
        var sum = 0
       
        while originalNo != 0 {
//            print("This is on \(originalNo)")
            let mod = originalNo % 10
            sum = sum*10 + mod
//            print(sum)
            originalNo = originalNo / 10
        }
        
        if sum > Int32.max || sum < Int32.min {
            return 0
        }

        return sum
    }
}

print(Solution().reverse(0))
 