// ------------------------------------ EXPLANATION ----------------------------------
/*

1 :
Input: nums = [8,1,2,2,3]
Output: [4,0,1,1,3]

2 :
Input: nums = [6,5,4,8]
Output: [2,1,0,3]

3 :
Input: nums = [7,7,7,7]
Output: [0,0,0,0]

*/

// ------------------------------------ Time Taken : 560 ms ----------------------------------
import UIKit

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
Solution().smallerNumbersThanCurrent([8,1,2,2,3])


