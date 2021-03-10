/* Working :
array = [1,3,5,6] , target = 3 .Then, the location of 3 i array is : 1.
Now if we want to find the element which is not present in array then it enter that element in that array 
at its specific (deserved) location.

Ex :- array = [1,3,5,7] , target = 4 .Then, the location of 4 in array is : 2.
*/

class Solution {
    var position = 0
        func searchInsert(_ nums: [Int], _ target: Int) -> Int {
            var myArray = nums
            
            func searchingLoop() {
                for i in myArray {
                    myArray[position]
                    if i == target {
                        print(position)
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
            
            return position
        }
}


Solution().searchInsert([1,3,5,7], 4)  // -> OUTPUT = 2
//Solution().searchInsert([1,3,5,7], 5)  // -> OUTPUT = 2
