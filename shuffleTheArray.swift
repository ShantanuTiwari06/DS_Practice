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

// ---------------------------------- Time Taken : 44 ms ---------------------------------------------
class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
       let arrx = nums.prefix(n)
        let arry = nums.suffix(n)
        return zip(arrx,arry).flatMap{ [$0.0, $0.1] }
    }
}

// ---------------------------------- Time Taken : 40 ms ---------------------------------------------
class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        var out = [Int]()
        for i in 0..<n {
            out.append(nums[i])
            out.append(nums[i + n])
        }
        return out
    }
}

// ---------------------------------- Time Taken : 36 ms ---------------------------------------------

class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        var res = [Int]()
        for i in 0..<n {
            res.append(nums[i])
            res.append(nums[i + n])
        }
        return res
    }
}

// ---------------------------------- Time Taken : 32 ms ---------------------------------------------

class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        let z = nums.count/2
        var ans = [Int]()
        for i in 0...z-1{
            ans.append(nums[i])
            ans.append(nums[i+n])
        }
        
        return ans
        
    }
}