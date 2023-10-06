//
//  Repeated String.swift
//  Code Challenges
//
//  Created by Krunal on 21/03/22.
//

import Foundation

func repeatedString(s: String, n: Int) -> Int {
    let q = n / s.count
    let r = n % s.count
    let c = s.map { $0 }
    print("Q:\(q) == R:\(r) == C:\(c)")
    let totalAs = q * countCharA(c: c, length: s.count) + ((r > 0) ? countCharA(c: c, length: r) : 0)
    return totalAs
}

func countCharA(c: [Character], length: Int) -> Int {
    var count = 0
    
    for i in 0..<length {
        if c[i] == "a" {
            count += 1
        }
    }
    
    return count
}

/*
 TEST Cases
 
 var s = ""
 var n = 0

 s = "abcac"
 n = 10
 print("Output:\(repeatedString(s: s, n: n))")

 s = "aba"
 n = 10
 print("Output:\(repeatedString(s: s, n: n))")

 s = "a"
 n = 1000000000000
 print("Output:\(repeatedString(s: s, n: n))")

 s = "absosl"
 n = 1000000000000
 print("Output:\(repeatedString(s: s, n: n))")

 */
