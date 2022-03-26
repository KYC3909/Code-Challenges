import UIKit

print("Hacker Rank -  Code Challenge")
print("Two Strings")

func twoStrings(s1: String, s2: String) -> String {
    let seta = Set(s1)
    let setb = Set(s2)
    return seta.intersection(setb).count != 0 ? "YES" : "NO"
}

var a = ""
var b = ""
print("Output:\(twoStrings(s1: a, s2: b))")
