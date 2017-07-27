//: Playground - noun: a place where people can play

import UIKit
import Foundation


/*
 A flock of n birds is flying across the continent. Each bird has a type, and the different types are designated by the ID numbers 1, 2, 3, 4, and 5.
 
 Given an array of n integers where each integer describes the type of a bird in the flock, find and print the type number of the most common bird. If two or more types of birds are equally common, choose the type with the smallest ID number.
 
 Input Format
 
 The first line contains an integer denoting n (the number of birds).
 The second line contains n space-separated integers describing the respective type numbers of each bird in the flock.
 
 Constraints
 
 It is guaranteed that each type is 1, 2, 3, 4, or 5.
 Output Format
 
 Print the type number of the most common bird; if two or more types of birds are equally common, choose the type with the smallest ID number.
 
 Sample Input
 6
 1 4 4 4 5 3
 
 Sample Output
 4
 
 */

//Test Data
var testInputCount = 6
var testInput = "1 4 4 4 5 3"

let birdArray = testInput.components(separatedBy: " ").map{Int($0)!}

var dict: [Int: Int] = [:]
for i in birdArray {
    if let _ = dict[i] {
        dict[i]! += 1
    } else {
        dict[i] = 1
    }
}
print(dict)

if let firstEntry  = dict.first {
    var maxCounter: Int = firstEntry.value
    var keyTracker: Int = firstEntry.key
    
    for (currentKey, currentValue) in dict {
        if currentValue > maxCounter {
            maxCounter = currentValue
            keyTracker = currentKey
        } else if currentValue == maxCounter && currentKey < keyTracker {
            keyTracker = currentKey
        }
    }
    print(keyTracker)
}
