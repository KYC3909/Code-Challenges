import UIKit

print("Hacker Rank -  Code Challenge")
print("Left Rotation")

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

var a = [1 ,2 ,3 ,4,5]
var d = 4
print("Output:\(rotLeft(a: a, d: d))")


a = [1 ,2 ,3 ,4,5]
d = 2
print("Output:\(rotLeft(a: a, d: d))")
