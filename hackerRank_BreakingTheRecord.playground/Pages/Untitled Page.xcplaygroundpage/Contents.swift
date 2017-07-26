//: Playground - noun: a place where people can play

import UIKit

//Maria plays n games of college basketball in a season. Because she wants to go pro, she tracks her points scored per game sequentially in an array defined as . After each game , she checks to see if score  breaks her record for most or least points scored so far during that season.

//Given Maria's array of  for a season of  games, find and print the number of times she breaks her record for most and least points scored during the season.

//Note: Assume her records for most and least points at the start of the season are the number of points scored during the first game of the season.

//Input Format

//The first line contains an integer n denoting  (the number of games).
//The second line contains n space-separated integers describing the respective values of s[i], s[i+1] and so on.

//Constraints
// 1 <= n <= 1000
// 0 <= s[i] <= 10^8

//Output Format
//
//Print two space-seperated integers describing the respective numbers of times her best (highest) score increased and her worst (lowest) score decreased.


var numberOfGames = 10
var scores: [Int] = []

for i in 1...numberOfGames {
    scores.append(Int(arc4random()))
}

var highestScore: Int = 0
var lowestScore: Int = 0

var highScoreCounter = 0
var lowScoreCounter = 0

for i in 0..<scores.count - 1 {
    if scores[i] > highestScore {
        highestScore = scores[i]
        highScoreCounter += 1
    } else if scores[i] < lowestScore {
        lowestScore = scores[i]
        lowestScore += 1
    }
}
print(highScoreCounter, lowScoreCounter)
