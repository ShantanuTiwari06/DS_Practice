import UIKit

// ------------------------------------ Time Taken : 560 ms ----------------------------------
class Solution {
    var solutionArray = [Int]()
    var countArray = [Int]()
    var count = 0
    
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        for numbers in nums {
            for number in nums {
                if numbers > number {
                    countArray.append(number)
                    count = countArray.count
                }
            }
            countArray.removeAll()
            solutionArray.append(count)
            count = 0
        }
        print("This is solution Array : \(solutionArray)")
        return solutionArray
    }
}
Solution().smallerNumbersThanCurrent([7,7,7,7])


