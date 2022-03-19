//
//  Jumping On Clouds.swift
//  Code Challenges
//
//  Created by Krunal on 19/03/22.
//

import Foundation

func jumpingOnClouds(c: [Int]) -> Int {
    
    var jumps = -1
    let arrayLength = c.count
    var currentIndex = 0

    for _ in c {
        if currentIndex >= arrayLength { break }
        if ((currentIndex + 2) < arrayLength) && c[(currentIndex + 2)] == 0 {
            currentIndex += 1
        }
        currentIndex += 1
        jumps += 1
    }
    
    return jumps
}
