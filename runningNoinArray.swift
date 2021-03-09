import UIKit

// sums - [],           element - 1, sumLast - 0,       result - [1]            =>          [] + [1 + 0] =   [1]
// sums - [1],          element - 1, sumLast - 1,       result - [1, 2]         =>         [1] + [1 + 1] =   [1,2]
// sums - [1, 2],       element - 1, sumLast - 2,       result - [1,2,3]        =>      [1, 2] + [1 + 2] =   [1,2,3]
// sums - [1, 2, 3],    element - 1, sumLast - 3,       result - [1, 2, 3, 4]   =>   [1, 2, 3] + [1 + 3] =   [1,2,3,4]


//---------------------------------- Time Taken : 20 ms -------------------------------------------------

class Solution {
    func runningSum(array: [Int]) -> [Int] {
        return array.reduce([], { (sums, element) in
            return sums + [element + (sums.last ?? 0)]
        })
    }
}
print(Solution().runningSum(array: [1,1,1]))
//-------------------------------- Time Taken : 16 ms ---------------------------------------------------

class anotherSolution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var temp = 0
        var selfNums = [Int]()
        for number in nums {
            temp += number
            selfNums.append(temp)
        }
        return selfNums
    }
}
print(anotherSolution().runningSum([1,1,1]))

//-----------------------------------------------------------------------------------
