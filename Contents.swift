import UIKit


// The first integer of each row is greater than the last integer of the one above it
// This is a sorted arrat
// We can try to do a binary search
// Keep adjusting the pointers

func searchMatrix2(_ matrix:[[Int]], _ target:Int) -> Bool {
    if matrix.isEmpty { return false}
     
    var rows = matrix.count
    var columns = matrix[0].count - 1
    
    var start = 0
    var end = rows * columns - 1
    
    while start <= end {
        let mid = (end - start)/2 //can also be (end - start)/2
        let midVal = matrix[mid/columns][mid % columns]
        
        if midVal == target {
            return true
        }
        
        if midVal > target {
            end = mid - 1
        } else {
            start = mid + 1
        }
    }
    return false
}








