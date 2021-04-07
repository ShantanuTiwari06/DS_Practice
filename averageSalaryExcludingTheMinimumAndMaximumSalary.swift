/*
--------------------------------- EXPLANATION ---------------------------------
 Example 1:

 Input: salary = [4000,3000,1000,2000]
 Output: 2500.00000
 Explanation: Minimum salary and maximum salary are 1000 and 4000 respectively.
 Average salary excluding minimum and maximum salary is (2000+3000)/2= 2500

 Example 2:

 Input: salary = [1000,2000,3000]
 Output: 2000.00000
 Explanation: Minimum salary and maximum salary are 1000 and 3000 respectively.
 Average salary excluding minimum and maximum salary is (2000)/1= 2000

 Example 3:

 Input: salary = [6000,5000,4000,3000,2000,1000]
 Output: 3500.00000

 Example 4:

 Input: salary = [8000,9000,2000,3000,6000,1000]
 Output: 4750.00000

 */

//----------------- Time Taken : 4 ms ; Memory : 14.8 MB --------------------

class Solution {
    var solution = 0.00000
    func average(_ salary: [Int]) -> Double {
        let filterSalaryArr = salary.sorted().dropFirst().dropLast()
        let sumOfFilterArr = filterSalaryArr.reduce(0, { x,y in
            x + y
        })
        return Double(String(format: "%.05f", Double(sumOfFilterArr) / Double(filterSalaryArr.count)))!
    }
}
print(Solution().average([48000,59000,99000,13000,78000,45000,31000,17000,39000,37000,93000,77000,33000,28000,4000,54000,67000,6000,1000,11000]
))


//--------------------------------- Time Taken : 0 ms ---------------------------------

class twoSolution {
    func average(_ salary: [Int]) -> Double {
        var sum = 0
        var mi = Int.max, mx = Int.min
        let N = salary.count
        for n in salary {
            sum += n
            mi = min(mi, n)
            mx = max(mx, n)
        }

        return Double(sum - mi - mx) / Double(N - 2)
    }
}
