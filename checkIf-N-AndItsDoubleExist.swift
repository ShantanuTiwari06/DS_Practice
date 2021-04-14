/*
-------------------------------- EXPLANATION --------------------------------
 Example 1:

 Input: arr = [10,2,5,3]
 Output: true
 Explanation: N = 10 is the double of M = 5,that is, 10 = 2 * 5.

 Example 2:

 Input: arr = [7,1,14,11]
 Output: true
 Explanation: N = 14 is the double of M = 7,that is, 14 = 2 * 7.

 Example 3:

 Input: arr = [3,1,7,11]
 Output: false
 Explanation: In this case does not exist N and M, such that N = 2 * M.

 */

 // --------------------------- Time Taken : 48 ms ; Memory : 14 MB ---------------------------
class Solution {
    func checkIfExist(_ arr: [Int]) -> Bool {
        var result = Bool()
        var position = 0
       
        for i in arr {
            var array = arr
            let doubleOfi = i * 2
            array.remove(at: position)
            
            if array.contains(doubleOfi) {
                return true
            }else{
                result = false
            }
            
            position += 1
        }
        return result
    }
}
print(Solution().checkIfExist([-2,0,10,-19,4,6,-8]))