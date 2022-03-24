import UIKit

print("Hacker Rank -  Code Challenge")
print("Array Manipulation")

func arrayManipulation(n: Int, queries: [[Int]]) -> Int {
    var maxValue = Int.min, sum = 0
    var storage = [Int](repeating: 0, count: n + 2)
    
    for i in 0..<queries.count {
        let a = queries[i][0]
        let b = queries[i][1]
        let k = queries[i][2]
        
        storage[a] += k
        storage[b+1] -= k
    }
    
    for value in storage {
        sum += value
        maxValue = max(sum, maxValue)
    }
    
    return maxValue
}

var n = 10
var q = [[1,5,3], [4,8,7], [6,9,1]]
print("Output:\(arrayManipulation(n: n, queries: q))")

n = 5
q = [[1,2,100], [2,5,100], [3,4,100]]
print("Output:\(arrayManipulation(n: n, queries: q))")
