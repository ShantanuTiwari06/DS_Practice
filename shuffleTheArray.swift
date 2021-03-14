import UIKit

// Explaination :-----

// Input Array = [1,2,3,4,5,6]         Target = n       // n = 3

// position = 0 , position + n = 3           ->  1 , 4
// position = 1 , position + n = 4           ->  1 , 4 , 2 , 5
// position = 2 , position + n = 5           ->  1 , 4 , 2 , 5 , 3 , 6
// position = 3 , position + n = 6           ->  1 , 4 , 2 , 5 , 3 , 6

// ---------------------------------- Time Taken : 48 ms ---------------------------------------------
class Solution {
    var result = [Int]()
    var position = 0
    
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        nums.forEach { _ in
            if position <= n-1 {
                result.append(nums[position])
                result.append(nums[position + n])
            }
            position += 1
        }
        print(result)
        return result
    }
}
Solution().shuffle([1,2,3,4,5,6], 3)

// ---------------------------------- Time Taken : 48 ms another Code---------------------------------------------

class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        var shuffled = [Int]()
        for i in 0..<n {
            shuffled.append(nums[i])
            shuffled.append(nums[n+i])
        }
        return shuffled
    }
}