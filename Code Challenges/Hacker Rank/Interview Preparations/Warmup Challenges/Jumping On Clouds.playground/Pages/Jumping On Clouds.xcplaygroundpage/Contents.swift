import UIKit

print("Hacker Rank -  Code Challenge")
print("Jumping On Clouds")

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

var c = [0,1,0,0,0,1,0] // = 3
print("\n\t:\(c)")
print("Output:\(jumpingOnClouds(c: c))")

c = [0,0,1,0,0,1,0] // = 4
print("\n\t:\(c)")
print("Output:\(jumpingOnClouds(c: c))")

c = [0,0,0,0,1,0] // = 3
print("\n\t:\(c)")
print("Output:\(jumpingOnClouds(c: c))")

c = [0,0,1,0,0,0,0,1,0,0] // = 6
print("\n\t:\(c)")
print("Output:\(jumpingOnClouds(c: c))")
