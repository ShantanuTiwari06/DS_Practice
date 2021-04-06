
/*
 ---------------------------- EXPLNATION  ----------------------------
 Example 1:
 Input: num1 = "2", num2 = "3"
 Output: "6"

 Example 2:
 Input: num1 = "123", num2 = "456"
 Output: "56088"

 */

 // ------------------------- Time Taken : 108 ms ; Memory : 15.3 MB --------------------------
class Solution {
    
    func multiply(_ num1: String, _ num2: String) -> String {
        let num1A = Array(num1)
//        print("This is num1A : \(num1A)")
        let num2A = Array(num2)
//        print("This is num2A : \(num2A)")
        var sum = [Int] (repeating: 0, count: num1.count + num2.count) // to repeat any no. for given no. of times.
//        print(sum)
        
        for (positionOfNo1, number1) in num1A.enumerated().reversed() { // 123 -> 321
            // if we not use reversed() ; Then, positionOfNo1 : number1 = 0 : 1 , 1 : 2, 2 : 3
            // when we use reversed()   ; Then, positionOfNo1 : number1 = 2 : 3 , 1 : 2, 0 : 1
//            print("This is positionOfNo1 : \(positionOfNo1)") // 2, 1
//            print("This is number1 : \(number1)") // 3, 2

            for (positionOfNo2, number2) in num2A.enumerated().reversed() {
                // positionOfNo2 : number2 = 2 : 6, 1 : 5, 0 : 4 for no of time = digitsCount of num1
//                print("This is j : \(positionOfNo2)") // 2, 1, 0
//                print("This is number2 : \(number2)") // 6, 5, 4
                guard let digit1 = number2.wholeNumberValue, let digit2 = number1.wholeNumberValue else { return "" }
//                print("This is digit1 : \(digit1)") // 6, 5, 4
//                print("This is digit2 : \(digit2)") // 3, 3, 3

                let carry = positionOfNo1 + positionOfNo2 // 2+2, 2+1, 2+0
//                print("This is carry : \(carry)") // 4, 3, 2

                let resultPlusLastCarry = positionOfNo1 + positionOfNo2 + 1
//                print("This is resultPlusLastCarry : \(resultPlusLastCarry)") // 5, 4, 3

                let value = digit1 * digit2 + sum[resultPlusLastCarry] // add in carry from before
                // 6*3+0, 5*3+1, 4*3+1
//                print("This is value  : \(value)") // 18, 16, 13

                sum[resultPlusLastCarry] = value % 10 // 8, 6, 3
                sum[carry] += value / 10 // 1, 1, 1
//                print(sum) // [0, 0, 0, 0, 1, 8], [0, 0, 0, 1, 6, 8], [0, 0, 1, 3, 6, 8],

//                print("----------------------------")

            }
        }
//        print("This is sum.first \(sum.first)")
        while let firstSum = sum.first, firstSum == 0 { sum.removeFirst() }
//        print(sum) // [5, 6, 0, 8, 8]
//        print("This is sum.first \(sum.map({ String($0) }))") // ["5", "6", "0", "8", "8"]
        let result = sum.map ({ String($0) }).joined()

//        print("This is result : \(result)")  // 56088
        // ternary operator - if result.count > 0 then, return result ? else "0"
        return result.count > 0 ? result : "0"
    }
    
}
print(Solution().multiply("123", "456"))

// ------------------------- Time Taken : 24 ms  --------------------------

class threeSolution {
    func multiply(_ num1: String, _ num2: String) -> String {
        if num1 == "0" || num2 == "0" { return "0" }
        let n1 = num1.reversed().map { Int(String($0))! }
        let n2 = num2.reversed().map { Int(String($0))! }
        var res = Array(repeating: 0, count: n1.count + n2.count)
        for i in 0..<n1.count {
            for j in 0..<n2.count {
                // e.g. "300x40000", we add up number of zeros and put 3x4 to target
                res[i + j] += n1[i] * n2[j]
            }
        }
        
        // flattern
        for i in 0..<res.count-1 {
            res[i+1] += res[i] / 10
            res[i] %= 10
        }
        
        // remove leading zeros
        while res.last == 0 {
            res.removeLast()
        }
        
        // return
        return res.reversed().map { String($0) }.reduce("", +)
    }
}