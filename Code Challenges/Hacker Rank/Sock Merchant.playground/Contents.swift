import UIKit

print("Hacker Rank -  Code Challenge")
print("Sock Merchant")

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

print("Count:\(sockMerchant(n: 9, ar: [10, 20, 20, 10, 10, 30, 50, 10, 20]))")
print("\n\n")
print("Count:\(sockMerchant(n: 10, ar: [1 ,1 ,3 ,1 ,2,1,3,3,3,3]))")
print("\n\n")
print("Count:\(sockMerchant(n: 15, ar: [6 ,5 ,2 ,3 ,5 ,2 ,2 ,1 ,1 ,5 ,1 ,3 ,3 ,3 ,5]))")
