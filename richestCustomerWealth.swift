import UIKit
/*

 ---------------------------------------- EXPLANATION ----------------------------------------
1.
Input: accounts = [[1,2,3],[3,2,1]]
Output: 6
Explanation:
1st customer has wealth = 1 + 2 + 3 = 6
2nd customer has wealth = 3 + 2 + 1 = 6
Both customers are considered the richest with a wealth of 6 each, so return 6.

2.
Input: accounts = [[1,5],[7,3],[3,5]]
Output: 10
Explanation:
1st customer has wealth = 6
2nd customer has wealth = 10
3rd customer has wealth = 8
The 2nd customer is the richest with a wealth of 10.

3.
Input: accounts = [[2,8,7],[7,1,3],[1,9,5]]
Output: 17

*/

// --------------------------------------- Time Taken : 112 ms ----------------------------------------
class Solution {
    var solution = 0
    var finalSum = 0
    var comparingArray = [Int]()
    
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        for smallArr in accounts {
//            print(smallArr)
            for _ in smallArr {
//                print(numbers)
                smallArr.reduce(0, { (sum,numbers) in
                    finalSum = sum + numbers
                    return finalSum
                })
            }
//            print("This is finalSum : \(finalSum)")
            comparingArray.append(finalSum)
        }
        solution = comparingArray.max()!
//        print(solution)
        return solution
    }
}
print(Solution().maximumWealth([[1,2,3], [3,2,1]]))

// --------------------------------------- Time Taken : 32 ms ----------------------------------------
class fiveSolution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        
        var maxx = 0
        for i in 0..<accounts.count {
            var sum = 0
            for j in 0..<accounts[i].count {
                sum += accounts[i][j]
            }
            maxx = max(maxx, sum)
        }
     return maxx
    }
}

// --------------------------------------- Time Taken : 28 ms ----------------------------------------

class fourSolution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        var richest: Int = 0
        var sum: Int = 0
        for i in 0..<accounts.count {
            for j in 0..<accounts[i].count {
                sum += accounts[i][j]
            }
            if richest < sum {
                richest = sum
            }
            sum = 0
        }
        return richest
    }
}

// --------------------------------------- Time Taken : 24 ms ----------------------------------------
class threeSolution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        return accounts.map({ $0.reduce(0, +) }).max()!
    }
}

print(Solution().maximumWealth([[1,2,3], [3,2,1]]))

// ---------------------------- Memory Consumed : 13,500 KB (least consumption) ----------------------------------------

class twoSolution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        var result = 0
        for row in accounts {
            let sum = row.reduce(0, +)
            result = sum > result ? sum : result
        }
        return result
    }
}