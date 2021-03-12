/* Working :
array = [1,3,5,6] , target = 3 .Then, the location of 3 i array is : 1.
Now if we want to find the element which is not present in array then it enter that element in that array 
at its specific (deserved) location.

Ex :- array = [1,3,5,7] , target = 4 .Then, the location of 4 in array is : 2.
*/
// ----------------------------------- Time Taken : 32 ms ------------------------------------
class Solution {
    var position = 0
    var resultPosition = 0
        func searchInsert(_ nums: [Int], _ target: Int) -> Int {
            var myArray = nums

            func searchingLoop() {
                for i in myArray {
                    if i == target {
                        resultPosition = position
                        print(resultPosition)
                    }
                    position += 1
                }
            }
            if myArray.contains(target) {
                searchingLoop()
            }else{
                myArray.append(target)
                myArray.sort { $0 < $1 }
                searchingLoop()
            }

            return resultPosition
        }
}

Solution().searchInsert([1,3,5,6], 5)
// ----------------------------------- Time Taken : 28 ms ------------------------------------
class secondSolution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var up = nums.count - 1
        var down = 0
        var mid = 0
        
        while up >= down {
            mid = (up + down) / 2
            
            if nums[mid] == target {
                return mid
            } else if nums[mid] > target {
                up = mid - 1
            } else {
                down = mid + 1
            }
        }
        
        return down
    }
}
secondSolution().searchInsert([1,3,5,6], 5)


// ----------------------------------- Time Taken : 24 ms ------------------------------------
class thirdSolution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
       
        var start = 0
        var end = nums.count - 1
        while true {
            let index = (start + end) / 2
            if nums[index] == target {
                return index
            }
            if nums[index] > target {
                end = index
            }
            else {
                start = index
            }
            if end == start + 1  || end == start {
                if nums[start] == target {
                    return start
                }
                if nums[end] == target {
                    return end
                }
                if target < nums[start] {
                    return start
                }
                else if target < nums[end] {
                    return end
                }
                else {
                    return end + 1
                }
            }
        }
    }
}

thirdSolution().searchInsert([1,3,5,6], 5)

// ----------------------------------- Time Taken : 20 ms ------------------------------------
class bestSolution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        // var result = 0
        // for item in nums {
        //     if target <= item {
        //         return result
        //     }
        //     result += 1
        // }
        // return result
        var result = 0
        while result < nums.count {
            if target <= nums[result] {
                return result
            }
            else{
                result += 1
            }
        }
        return result
    }
}
bestSolution().searchInsert([1,3,5,6], 5)
