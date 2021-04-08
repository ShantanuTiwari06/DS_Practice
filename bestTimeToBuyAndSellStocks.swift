/*
 --------------------------------- EXPLANATION ----------------------------------------------
 You are given an array prices where prices[i] is the price of a given stock on the ith day.

 You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.

 Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.

 Example 1:
 Input: prices = [7,1,5,3,6,4]
 Output: 5
 Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
 Note that buying on day 2 and selling on day 1 is not allowed because you must buy before you sell.

 Example 2:
 Input: prices = [7,6,4,3,1]
 Output: 0
 Explanation: In this case, no transactions are done and the max profit = 0.

 */

// ------------------------------- Time Taken : 980 ms ; Memory : 18 MB -------------------------------
class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        
        // when price array is empty return 0.
        if prices.isEmpty {
            return 0
        }
        
        // minimum = element at first position in price array.
        var minimum = prices[0] // 2 // ; initial minimum is 0.
        var maxProfit = 0 // maxProfit set to be 0 at starting.
        
        for price in prices {
            // Condition 1 : 2 < 2 not go in any condition.
            // Condition 2 : 4 < 2 not go in any condition.
            // Condition 3 : 2 < 2 not go in any condition.
            
            if price < minimum { // 2 < 2 : F, 4 < 2 : F, 1 < 2 : T
                minimum = price // minimum = 1
                // store value to maxProfit ,for every new greater diff btw the numbers, ;initial it would be 0.
            } else if ((price - minimum) > maxProfit) { // (2-2) > 0 : F, (4-2) > 0
                maxProfit = price - minimum // 4-2= 2,
            }
        }
        
        return maxProfit
    }
}
print(Solution().maxProfit([7,1,5,3,6,4]))