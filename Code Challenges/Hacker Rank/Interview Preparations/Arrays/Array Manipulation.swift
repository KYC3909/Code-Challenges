//
//  Array Manipulation.swift
//  Code Challenges
//
//  Created by Krunal on 24/03/22.
//

import Foundation

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
