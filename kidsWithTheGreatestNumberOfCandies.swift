 // -------------------------- EXPLANATION --------------------------
 /*
 
 1.
 Input: candies = [2,3,5,1,3], extraCandies = 3
Output: [true,true,true,false,true]
Explanation:
Kid 1 has 2 candies and if he or she receives all extra candies (3) will have 5 candies --- the greatest number of candies among the kids.
Kid 2 has 3 candies and if he or she receives at least 2 extra candies will have the greatest number of candies among the kids.
Kid 3 has 5 candies and this is already the greatest number of candies among the kids.
Kid 4 has 1 candy and even if he or she receives all extra candies will only have 4 candies.
Kid 5 has 3 candies and if he or she receives at least 2 extra candies will have the greatest number of candies among the kids.

 2.
  Input: candies = [4,2,1,1,2], extraCandies = 1
 Output: [true,false,false,false,false]
 Explanation: There is only 1 extra candy, therefore only kid 1 will have the greatest number of candies among the kids regardless of who takes the extra candy.
 
 3.
  Input: candies = [12,1,12], extraCandies = 10
 Output: [true,false,true]
 
*/

// ------------------------------ Time Taken : 8 ms -----------------------------------
class Solution {
    
    var solutionArray : [Bool] = []
    var check = false
    
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        let max = candies.max()
//        print(max!)
        
        for num in candies {
//            print(num)
            if num+extraCandies >= max! {
                check = true
//                print(check)
            }else{
                check = false
//                print(check)
            }
            solutionArray.append(check)
        }
        
//        print(solutionArray)
        return solutionArray
    }
}

print(Solution().kidsWithCandies([2,3,5,1,3], 3))

// ------------------------------ Time Taken : 4 ms -----------------------------------



class twoSolution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        let greatest = candies.max()!
        var result = [Bool]()
        
        for candyIndex in 0..<candies.count {
            result.append(candies[candyIndex] + extraCandies >= greatest)
        }
        
        return result
    }
}