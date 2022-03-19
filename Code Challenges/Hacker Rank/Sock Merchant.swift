//
//  Sock Merchant.swift
//  Code Challenges
//
//  Created by Krunal on 19/03/22.
//

import Foundation

func sockMerchant(n: Int, ar: [Int]) -> Int {
    var array = [Int]()
    var count = 0
    
    for item in ar {
        if array.contains(item) {
            if let index = array.firstIndex(of: item) {
                array.remove(at: index)
            }
            count += 1
        }else {
            array.append(item)
        }
    }
    
    return count
}
