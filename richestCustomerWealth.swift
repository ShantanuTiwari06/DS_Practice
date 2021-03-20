import UIKit

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
