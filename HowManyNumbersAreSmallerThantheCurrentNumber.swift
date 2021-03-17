// ------------------------------------ EXPLANATION ----------------------------------
/*
1791. Find Center of Star Graph

 Explanation:
 For nums[0]=8 there exist four smaller numbers than it (1, 2, 2 and 3).
 For nums[1]=1 does not exist any smaller number than it.
 For nums[2]=2 there exist one smaller number than it (1).
 For nums[3]=2 there exist one smaller number than it (1).
 For nums[4]=3 there exist three smaller numbers than it (1, 2 and 2).

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



// ------------------------------------ Time Taken : 92 ms ----------------------------------

class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        var results = [Int]()
        for i in 0 ..< nums.count {
            results.append(0)
            for j in 0 ..< nums.count where nums[i] > nums[j]{
                results[i] += 1
            }
        }
        
        return results
    }
}


// ------------------------------------ Time Taken : 56 ms ----------------------------------
class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        let count = nums.count
        if count == 0 {return []}
      let sorted =  nums.sorted()
        var dict = [Int: Int]()
       
        var old = sorted[0]
        dict[sorted[0]] = 0
        var current  = 1
        while current < count {
            if sorted[current] != old {
                old = sorted[current]
                dict[old] =  current
            }
            current += 1
        }
        return nums.map{dict[$0]!}
        
    }
}