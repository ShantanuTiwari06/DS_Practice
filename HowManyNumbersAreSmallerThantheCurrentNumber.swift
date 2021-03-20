// ------------------------------------ EXPLANATION ----------------------------------
/*


 Explanation:
 For nums[0]=8 there exist four smaller numbers than it (1, 2, 2 and 3).
 For nums[1]=1 does not exist any smaller number than it.
 For nums[2]=2 there exist one smaller number than it (1).
 For nums[3]=2 there exist one smaller number than it (1).
 For nums[4]=3 there exist three smaller numbers than it (1, 2 and 2).

1 :
Input: nums = [8,1,2,2,3]
Output: [4,0,1,1,3]

2 :
Input: nums = [6,5,4,8]
Output: [2,1,0,3]

3 :
Input: nums = [7,7,7,7]
Output: [0,0,0,0]

*/

// ------------------------------------ Time Taken : 560 ms ----------------------------------
import UIKit

class Solution {
    var solutionArray = [Int]()
    var countArray = [Int]()
    var count = 0
    
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        for numbers in nums {
            for number in nums {
                if numbers > number {
                    countArray.append(number)
                    count = countArray.count
                }
            }
            countArray.removeAll()
            solutionArray.append(count)
            count = 0
        }
        print("This is solution Array : \(solutionArray)")
        return solutionArray
    }
}
Solution().smallerNumbersThanCurrent([8,1,2,2,3])



// ------------------------------------ Time Taken : 92 ms ----------------------------------

class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        var results = [Int]()
        for i in 0 ..< nums.count {
            results.append(0)
            for j in 0 ..< nums.count where nums[i] > nums[j]{
                results[i] += 1
            }
        }
        
        return results
    }
}


// ------------------------------------ Time Taken : 56 ms ----------------------------------
class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        let count = nums.count
        if count == 0 {return []}
      let sorted =  nums.sorted()
        var dict = [Int: Int]()
       
        var old = sorted[0]
        dict[sorted[0]] = 0
        var current  = 1
        while current < count {
            if sorted[current] != old {
                old = sorted[current]
                dict[old] =  current
            }
            current += 1
        }
        return nums.map{dict[$0]!}
        
    }
}

// ------------------------------------ Time Taken : 52 ms ----------------------------------
class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        let dict = nums.sorted().enumerated().reduce(into: [Int: Int](), { $0[$1.1] = min($0[$1.1, default: Int.max], $1.0) })
        return nums.map({ dict[$0, default: 0] })
    }
}


// ------------------------------------ Time Taken : 48 ms ----------------------------------
class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        let sorted = nums.sorted()
        var cache = [Int: Int]()

        for (index, n) in sorted.enumerated() {
            if cache[n] == nil {
                cache[n] = index
            }
        }

        return nums.map {
            return cache[$0]!
        }
    }
}

// ------------------------------------ Time Taken : 44 ms ----------------------------------
class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        var counts: [Int: Int] = [:]
        
        for i in 0 ..< nums.count {
            let n = nums[i]
            let count = counts[n] ?? 0
            counts[n] = count + 1
        }
        
        var smaller: [Int: Int] = [:]
        
        var result: [Int] = []
        for i in 0 ..< nums.count {
            let n = nums[i]
            if let small = smaller[n] {
                result.append(small)
                continue
            }
            
            var tally = 0
            for (k, v) in counts {
                if k < n {
                    tally += v
                }
            }

            smaller[n] = tally
            result.append(tally)
        }
        
        return result
    }
}

// ------------------------------------ Time Taken : 36 ms ----------------------------------

class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        var cache = [Int: Int]()
        var result = [Int]()
        let numCount = nums.count
        
        for nI in 0 ..< numCount {
            let n = nums[nI]
            let nValue: Int
            if let value = cache[n] {
                nValue = value
            } else {
                var count = 0
                for i in 0 ..< nI {
                    if nums[i] < n {
                        count += 1
                    }
                }
                for i in (nI + 1) ..< numCount {
                    if nums[i] < n {
                        count += 1
                    }
                }
                cache[n] = count
                nValue = count
            }
                
            result.append(nValue)
        }
        return result
    }
}

// ------------------------------------ Time Taken : 28 ms ----------------------------------
class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        var count = [Int](repeating: 0, count: 101)
        var result = [Int]()
        
        for num in nums {
            count[num] += 1
        }
        
        for i in 1..<101 {
            count[i] += count [i-1]
        }
        
        for i in 0..<nums.count {
            if nums[i] == 0 {
                result.append(0)
            } else {
                result.append(count[nums[i] - 1])
            }
        }
        
        return result
    }
}

// ------------------------------------ Time Taken : 24 ms ----------------------------------

class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        var ht = Array(repeating: 0, count:101)
        var ans = [Int]()
        for num in nums {
            ht[num] += 1
        }
        for i in 1..<ht.count {
            ht[i] += ht[i-1]
        }
        for num in nums {
            if num == 0 {
                ans.append(0)
            }
            else {
                ans.append(ht[num-1])
            }
        }
        return ans
    }
}