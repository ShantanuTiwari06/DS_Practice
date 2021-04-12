/*
 -------------- EXPLANTION --------------
 You are given an array coordinates, coordinates[i] = [x, y], where [x, y] represents the coordinate of a point. Check if these points make a straight line in the XY plane.

 Example 1:
 Input: coordinates = [[1,2],[2,3],[3,4],[4,5],[5,6],[6,7]]
 Output: true

 Example 2:
 Input: coordinates = [[1,1],[2,2],[3,4],[4,5],[5,6],[7,7]]
 Output: false

 
 NOTE : Slope of every two points is same .
 // Slope of line formed by
 // two points (y2, y1), (x2, x1)

 Slope of Line = y2 - y1
                ---------
                 x2 - x1
 
 */

// ---------------------------------- Time Taken : 40 ms ; Memory : 14 MB ----------------------------------
class Solution {
    
    func checkStraightLine(_ coordinates: [[Int]]) -> Bool {
        
        var position = 2
        
        for _ in coordinates {
            var firstCoordinates = [Int]()
            var secondCoordinates = [Int]()
            var thirdCoordinates = [Int]()

            if position < coordinates.count {
                firstCoordinates = coordinates[position-2]
                secondCoordinates = coordinates[position-1]
                thirdCoordinates = coordinates[position]

                position += 1
               
                let collinearity = firstCoordinates[0] * (secondCoordinates[1] - thirdCoordinates[1]) + secondCoordinates[0] * (thirdCoordinates[1] - firstCoordinates[1]) + thirdCoordinates[0] * (firstCoordinates[1] - secondCoordinates[1])

                if collinearity != 0 {
                    return false
                }
            }
        }
        return true
    }
}

print(Solution().checkStraightLine([[1,1],[2,2],[3,4],[4,5],[5,6],[7,7]]))