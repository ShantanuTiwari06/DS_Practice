import UIKit

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
