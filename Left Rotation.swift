//
//  Left Rotation.swift
//  Code Challenges
//
//  Created by Krunal on 21/03/22.
//

import Foundation

func rotLeft(a: [Int], d: Int) -> [Int] {
    var mainArray = a
    var result = [Int]()
    
    for _ in 0..<d {
        result.append(mainArray[0])
        mainArray.remove(at: 0)
    }
    
    mainArray.append(contentsOf: result)
    result.removeAll()
    
    return mainArray
}

/*
 TEST Cases
 
 var a = [1 ,2 ,3 ,4,5]
 var d = 4
 print("Output:\(rotLeft(a: a, d: d))")


 a = [1 ,2 ,3 ,4,5]
 d = 2
 print("Output:\(rotLeft(a: a, d: d))")

 */
