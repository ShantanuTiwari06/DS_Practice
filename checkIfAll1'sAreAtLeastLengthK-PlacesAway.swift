/*
 --------------------------- EXPLANATION  ---------------------------
 
Given an array nums of 0s and 1s and an integer k, return True if all 1's are at least k places away from each other, otherwise return False.

 Example 1:
Input: nums = [1,0,0,0,1,0,0,1], k = 2
Output: true
Explanation: Each of the 1s are at least 2 places away from each other.

Example 2:
Input: nums = [1,0,0,1,0,1], k = 2
Output: false
Explanation: The second 1 and third 1 are only one apart from each other.

Example 3:
Input: nums = [1,1,1,1,1], k = 0
Output: true

Example 4:
Input: nums = [0,1,0,1], k = 1
Output: true
*/

// --------------------------- Time Taken : 456 ms ; Memory : 17.3 MB -------------------------------

class Solution {
    var positionOf1Arr = [Int]()
    var result = true
    func kLengthApart(_ nums: [Int], _ k: Int) -> Bool {
//        let stringArray = nums.map  { Optional(String($0)) }
        
        var position = 0
        
        // Here i collect the position of 1 in given array in positionOf1Arr array.
        for i in nums {
            if i == 1 {
                positionOf1Arr.append(position)
            }
            position += 1
//            print("This is i : \(i)")
//            print("This is position : \(position)")
        }
        print(":\(positionOf1Arr)")

        var index = 1
        if positionOf1Arr.count <= 1 {
            print("Here")
            return true
        }
        for _ in positionOf1Arr {
            if index < positionOf1Arr.count {
                if positionOf1Arr[index] - positionOf1Arr[index-1] > k {
                    print(positionOf1Arr[index] - positionOf1Arr[index-1])
                    result = true
                }else{
                    return false
                }
            }
            index += 1
        }

        
        print("This is final result :\(result)")
        return result
    }
}
print(Solution().kLengthApart([0,0,0], 2))

// --------------------------- Time Taken : 400 ms -------------------------------

class Solution {
    func kLengthApart(_ nums: [Int], _ k: Int) -> Bool {
        var count = 0, flag = false
        for num in nums {
            if num == 1 {
                if count < k && flag {
                    return false
                }
                flag = true
                count = 0
            } else {
                count += 1
            }
        }
        return true
    }
}
