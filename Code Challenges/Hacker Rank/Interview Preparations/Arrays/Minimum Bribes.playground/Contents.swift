import UIKit

print("Hacker Rank -  Code Challenge")
print("Minimum Bribes")

func minimumBribes(q: [Int]) -> Void {
    var bribeCount = 0
    var array = q
    
    // [1,2,3,5,4,6,7,8]
    //                  <----------- 'Right to Left'
    // Solving from Right to Left side
    for i in stride(from: (q.count-1), through: 0, by: -1) {
        if array[i] != i+1 { // If Bribe not happened
            
            if i-1 >= 0 && array[i-1] == i+1 { // If only one time Bribe happened
                bribeCount += 1      // Increase Bribe Count
                array.swapAt(i, i-1) // Swap position of i & i-1 = '5, 6'
            }
            else if i-2 >= 0 && array[i-2] == i+1 { // If only 2 times Bribe happened
                bribeCount += 2         // Increase Bribe Count by 2
                array.swapAt(i-2, i-1)  // Swap position i-2 & i-1 = '4, 5'
                array.swapAt(i-1, i)    // Swap position i-1 & i   = '5, 6'
            }
            else {
                // As per problem statement only '2 Bribes' can be possible
                // Otherwise we have to implement algorithm for multiple Bribes
                print("Too chaotic")
                return
            }
        }
    }
    array.removeAll()
    print("\(bribeCount)")
}

var q = [2,1,5,3,4]
minimumBribes(q: q)

q = [2,1,5,3,7,8,6,4]
minimumBribes(q: q)

q = [5 ,1 ,2 ,3 ,7 ,8 ,6,4]
minimumBribes(q: q)


q = [1 ,2 ,5 ,3 ,7 ,8 ,6 ,4]
minimumBribes(q: q)


