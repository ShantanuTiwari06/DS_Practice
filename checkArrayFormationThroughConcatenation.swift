/*
 // --------------------------------- EXPLANATION ---------------------------------

 You are given an array of distinct integers arr and an array of integer arrays pieces, where the integers in pieces are distinct. Your goal is to form arr by concatenating the arrays in pieces in any order. However, you are not allowed to reorder the integers in each array pieces[i].

 Return true if it is possible to form the array arr from pieces. Otherwise, return false.

  

 Example 1:

 Input: arr = [85], pieces = [[85]]
 Output: true

 Example 2:

 Input: arr = [15,88], pieces = [[88],[15]]
 Output: true
 Explanation: Concatenate [15] then [88]

 Example 3:

 Input: arr = [49,18,16], pieces = [[16,18,49]]
 Output: false
 Explanation: Even though the numbers match, we cannot reorder pieces[0].

 Example 4:
 
 Input: arr = [91,4,64,78], pieces = [[78],[4,64],[91]]
 Output: true
 Explanation: Concatenate [91] then [4,64] then [78]

 Example 5:

 Input: arr = [1,3,5,7], pieces = [[2,4,6,8]]
 Output: false

 */
 // --------------------------------- Time Taken : 68 ms ; Memory : 14.5 MB ---------------------------------
class Solution {
    var moreThen1ElemArrInPieces = [[Int]]()
    var result = false
    
    func canFormArray(_ arr: [Int], _ pieces: [[Int]]) -> Bool {
        var elementsMatch = false
        
        // Here if elements of pieces not match with arr elements so return direct false otherwise go on...
        for i in pieces {
            for ii in i {
                if arr.contains(ii) {
                    elementsMatch = true
                }else{
                    elementsMatch = false
                    return false
                }
            }
        }
        
        if elementsMatch == true {

            for i in pieces {
                if i.count > 1 {
                    moreThen1ElemArrInPieces.append(i)
                }else {
                    // Here if pieces contain only 1 array with only 1 element and it not available in arr So direct return false / Else - Go on...
                    for ii in i {
                        if arr.contains(ii) {
                            result = true
                        }else{
                             return false
                        }
                    }
                }
            }
            
            let stringArray = arr.map  { Optional(String($0)) }
            var positionArr = [Int]()
            
            for i in moreThen1ElemArrInPieces {
                for ii in i {
                    if stringArray.contains(String(ii)) {
                        let position = stringArray.firstIndex(of: String(ii))
                        positionArr.append(position!)
                    }
                }
                
                var p = 0
                for _ in positionArr {
                    if p < positionArr.count-1 {
                        if positionArr[p]+1 == positionArr[p+1] {
                            result = true
                        }else {
                            return false
                        }
                    }
                    p += 1
                }
                positionArr = []
            }
        }else{
            result = false
        }
        return result
    }
}

print(Solution().canFormArray([2,82,79,95,16,28,14,12,4], [[2],[82],[28],[79,95,16],[4], [12,14]]))

// --------------------------------- Time Taken : 36 ms ---------------------------------
class Solution {
    func canFormArray(_ arr: [Int], _ pieces: [[Int]]) -> Bool {
        
        var aa = [Int]()
        
        var i = 0
        while(i<arr.count) {
            
            let v = arr[i]
            
            let ar = pieces.filter {$0.contains(v)}
            if(ar.count > 0) {
                aa += ar[0]
                i = aa.count-1
            }
            // print(aa,i)
            i+=1
        }
        
        
        return aa == arr
    }
}