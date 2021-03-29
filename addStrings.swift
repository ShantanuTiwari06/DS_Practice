/*
------------------------------------- EXPLANATION ------------------------------------- 
 Example 1:
 
 Input: num1 = "11", num2 = "123"
 Output: "134"
 
 Example 2:
 
 Input: num1 = "456", num2 = "77"
 Output: "533"
 
 Example 3:
 
 Input: num1 = "0", num2 = "0"
 Output: "0"
 
 1 <= num1.length, num2.length <= 10^4
 num1 and num2 consist of only digits.
 num1 and num2 don't have any leading zeros except for the zero itself.
 
  NOTE : Deactivate the print statements to see the each step.
 */


// --------------------------- Time Taken : 1104 ms ---------------------------

class Solution {
    var solution = ""
    
    func addStrings(_ num1: String, _ num2: String) -> String {
        var firstNumber = num1
        var secondNumber = num2
        var oneNoCount = firstNumber.count
        var twoNoCount = secondNumber.count
        var carry = 0
        var sum = 0
        var sumInString = ""
        
        while oneNoCount > 0  || twoNoCount > 0 {
            
            // print("This is firstNumber 1 : \(firstNumber)")
            var lastDigitOfNum1 = firstNumber.suffix(1)
            // print("This is lastDigitOfNum1 1 : \(lastDigitOfNum1)")
           
            // print("This is secondNumber 1 : \(secondNumber)") // 1, "",""
            var lastDigitOfNum2 = secondNumber.suffix(1)
            // print("This is lastDigitOfNum2 1 : \(lastDigitOfNum2)") // 1, "","",


            if secondNumber == "" {
                lastDigitOfNum2 = "0"
            }else if firstNumber == "" {
                lastDigitOfNum1 = "0"
            }
            
            // print("This is lastDigitOfNum1 2 : \(lastDigitOfNum1)") // 9, 9, 9
            // print("This is lastDigitOfNum2 2 : \(lastDigitOfNum2)") // 1, 0, 0

            sum = Int(lastDigitOfNum1)! + Int(lastDigitOfNum2)! + carry
            sumInString = String(sum)
            solution.append(contentsOf: sumInString.suffix(1))
            
            carry = sum/10
            // print("This is carry : \(carry)")
            oneNoCount -= 1
            twoNoCount -= 1
            
            firstNumber = String(firstNumber.dropLast())
            // print("This is firstNumber 2 :  \(firstNumber)") // 99, 9, "",
            secondNumber = String(secondNumber.dropLast())
            // print("This is secondNumber 2 : \(secondNumber)") // "", "", "",

            if firstNumber == "" && secondNumber == "" && carry != 0 {
                sum = carry
                sumInString = String(sum)
                solution.append(contentsOf: sumInString.suffix(1))
            }
            
        }
        return String(solution.reversed())
    }
}
print(Solution().addStrings("11", "123"))


// --------------------------- Time Taken : 20 ms ---------------------------


class twoSolution {
    func addStrings(_ num1: String, _ num2: String) -> String {
        var num1 = num1
        var num2 = num2
        var l1 = num1.count
        let l2 = num2.count
        
        if l1 > l2 {
            num2 = String(repeating: "0", count: l1 - l2) + num2
        } else {
            num1 = String(repeating: "0", count: l2 - l1) + num1
        }
        l1 = num1.count
        let arr1 = Array(String(num1.reversed()))
        let arr2 = Array(String(num2.reversed()))
        
        var curr = 0
        var ans = ""
        var carry = 0
        
        while curr < l1 {
            let sum = arr1[curr].wholeNumberValue! + arr2[curr].wholeNumberValue! + carry
            let remain = sum % 10
            ans = String(remain) + ans
            // print(sum, remain)
            carry = sum/10 > 0 ? 1 : 0
            curr += 1
        }
        
        if carry > 0 {
            ans = "1" + ans
        }
        
        return ans
    }
    
}

// --------------------------- Time Taken : 16 ms ---------------------------
class threeSolution {
    func addStrings(_ num1: String, _ num2: String) -> String {
        let a = Array(num1)
        let b = Array(num2)
        var i = a.count - 1
        var j = b.count - 1
        var carry = 0
        var res = ""
        
        while i >= 0 || j >= 0 {
            let x = i >= 0 ? a[i].wholeNumberValue! : 0
            let y = j >= 0 ? b[j].wholeNumberValue! : 0
            let sum = x + y + carry
            carry = sum / 10
            res += String(sum % 10)
            i -= 1
            j -= 1
        }
        
        res += carry > 0 ? String(carry) : ""
        
        return String(res.reversed())
    }
}