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