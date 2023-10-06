//
//  Counting Valleys.swift
//  Code Challenges
//
//  Created by Krunal on 19/03/22.
//

import Foundation

func countingValleys(steps: Int, path: String) -> Int {
    
    let modified = path.uppercased()
    var valleyCounter = 0, seaLevel = 0
    
    modified.forEach { (item) in
        if item == "U" {
            seaLevel += 1
            if seaLevel == 0 {
                valleyCounter += 1
            }
        }else {
            seaLevel -= 1
        }
    }
    
    return valleyCounter
}

/*
 TEST Cases
 
 var path = "dduuuudd"
 print("Output:\(countingValleys(steps: path.count, path: path))")

 path = "UDDDUDUU"
 print("Output:\(countingValleys(steps: path.count, path: path))")

 path = "DUDDUUUUDDD"
 print("Output:\(countingValleys(steps: path.count, path: path))")

 path = "DDUUDDUDUUUD"
 print("Output:\(countingValleys(steps: path.count, path: path))")

 */
