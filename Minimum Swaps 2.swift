//
//  Minimum Swaps 2.swift
//  Code Challenges
//
//  Created by Krunal on 23/03/22.
//

import Foundation

func minimumSwaps(arr: [Int]) -> Int {
    var unsorted = arr
    
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

/*
 TEST Cases
 
 var arr = [1 ,3 ,5 ,2 ,4 ,6 ,7]
 print("Output:\(minimumSwaps(arr: arr))")


 */
