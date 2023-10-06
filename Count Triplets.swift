//
//  Count Triplets.swift
//  Code Challenges
//
//  Created by Krunal on 29/03/22.
//

import Foundation

func countTriplets(arr: [Int], r: Int) -> Int {
    var count = 0
    var afterDic = [Int:Int]()
    var beforeDic = [Int:Int]()
    _ = arr.map({ afterDic[$0] = afterDic[$0] == nil ? 1 : (afterDic[$0]! + 1)})
    
    for (_, value) in arr.enumerated() {
        afterDic[value]! -= 1
        if beforeDic[value/r] != nil && value%r == 0 && afterDic[value*r] != nil {
            count += beforeDic[value/r]! * afterDic[value*r]!
        }
        if beforeDic[value] != nil {
            beforeDic[value]! += 1
        }else{
            beforeDic[value] = 1
        }
    }
//    print("beforeDic"+beforeDic.description)
//    print("afterDic"+afterDic.description)
    return count

}

/*
 TEST Cases
 
 var arr = [1,3,3,9,9,27]
 var r = 3
 print("Output:\(countTriplets(arr: arr, r: r))")

 arr = [3,9,9,27]
 r = 3
 print("Output:\(countTriplets(arr: arr, r: r))")

 arr = [1,3, 9, 9, 27, 81]
 r = 3
 print("Output:\(countTriplets(arr: arr, r: r))")

 */
