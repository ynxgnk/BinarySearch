import UIKit



func binarySearch(_ array: [Int], _ value: Int) -> Int? {
    guard !array.isEmpty else {
        return nil
    }
    
    if array.count == 1 {
        return array[0] == value ? 0 : nil
    }
    
    var left: Int = 0
    var right: Int = array.count-1
    
    while left <= right {
        let middleIndex = left + right / 2
        let middleValue = array[middleIndex]
        
        if middleValue > value {
            right = middleIndex - 1
        } else if middleValue < value {
            left = middleIndex + 1
        }
        else if middleValue == value {
            return middleIndex
        }
    }
    
    return nil
}

//Array
let array = [1,3,4,5,12,13,22,31,72]

let foundIndex = binarySearch(array, 3)
print("\(foundIndex ?? -1)")
