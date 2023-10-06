//
//  Sherlock and Anagrams.swift
//  Code Challenges
//
//  Created by Krunal on 28/03/22.
//

import Foundation

extension String {
    func index(from: Int) -> Index {
        return self.index(startIndex, offsetBy: from)
    }

    func substring(from: Int) -> String {
        let fromIndex = index(from: from)
        return String(self[fromIndex...])
    }

    func substring(to: Int) -> String {
        let toIndex = index(from: to)
        return String(self[..<toIndex])
    }

    func substring(with r: Range<Int>) -> String {
        let startIndex = index(from: r.lowerBound)
        let endIndex = index(from: r.upperBound)
        return String(self[startIndex..<endIndex])
    }
}
func sherlockAndAnagrams(s: String) -> Int {
    var dic = [String:Int]()
    s.map( { dic[String($0)] = dic[String($0)] == nil ? 1 : (dic[String($0)]! + 1) } )
    var count = 0
    
    
    for i in stride(from: 2, to: s.count, by: 1) {
        let subString = String(s.substring(with: 0..<i).sorted())
        print(subString)
        let length = subString.count
        
        if dic[subString] == nil {
            dic[subString] = 1
        }else {
            dic[subString]! += 1
        }
        
        for j in stride(from: length-1, to: s.count, by: 1) {
            
            if (j + length) < s.count {
                let subString = String(s.substring(with: j..<j+length).sorted())
                print("other:" + subString)
                
                if dic[subString] == nil {
                    dic[subString] = 1
                }else {
                    dic[subString]! += 1
                }
            }
//            print("i,j, subString == \(i) , \(j) , \(subString)")
//            print("dic[subString] == \(dic[subString])")
        }
    }
    print(dic)
    for i in dic.keys {
        let v = dic[i] ?? 0
        count += v*(v-1)/2
    }

    return count
}
/*
 TEST Cases
 
 var s = "abba"
 print("Output:\(sherlockAndAnagrams(s: s))")

 s = "kkkk"
 print("Output:\(sherlockAndAnagrams(s: s))")

 */
