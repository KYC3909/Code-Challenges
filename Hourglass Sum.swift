//
//  Hourglass Sum.swift
//  Code Challenges
//
//  Created by Krunal on 21/03/22.
//

import Foundation


func hourglassSum(arr: [[Int]]) -> Int {
    var result = Int.min
    
    for row in 0..<4 {
        for col in 0..<4 {
            let sum =   arr[row][col] +
                        arr[row][col + 1] +
                        arr[row][col + 2] +
                        arr[row + 1][col + 1] +
                        arr[row + 2][col] +
                        arr[row + 2][col + 1] +
                        arr[row + 2][col + 2]
            
            result = max(result, sum)
        }
    }
    
    return result
}

/*
 TEST Cases
 
 let arr = [[1, 2, 3, 0, 0],
               [0, 0, 0, 0, 0],
               [2, 1, 4, 0, 0],
               [0, 0, 0, 0, 0],
               [1, 1, 0, 1, 0]];
 print("Output:\(hourglassSum(arr))")

 */
