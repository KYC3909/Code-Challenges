//
//  Two Strings.swift
//  Code Challenges
//
//  Created by Krunal on 26/03/22.
//

import Foundation

func twoStrings(s1: String, s2: String) -> String {
    let seta = Set(s1)
    let setb = Set(s2)
    return seta.intersection(setb).count != 0 ? "YES" : "NO"
}

/*
 TEST Cases
 
 var a = ""
 var b = ""
 print("Output:\(twoStrings(s1: a, s2: b))")

 */
