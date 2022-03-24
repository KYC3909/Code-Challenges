//
//  Minimum Swaps 2.swift
//  Code Challenges
//
//  Created by Krunal on 23/03/22.
//

import Foundation

func minimumSwaps(a: [Int]) -> Int {
    var unsorted = a
    
    var swapCount = 0
    var currentIndex = 0
    
    while currentIndex < unsorted.count {
        let originalIndex = unsorted[currentIndex] - 1
        
        if unsorted[currentIndex] != unsorted[originalIndex] {
            swapCount += 1
            unsorted.swapAt(currentIndex, originalIndex)
        }else {
            currentIndex += 1
        }
    }
    
    unsorted.removeAll()
    return swapCount
}
