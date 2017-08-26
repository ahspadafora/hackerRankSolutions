//: Playground - noun: a place where people can play
import Foundation

var matrix: [[Int]] = []
for i in 1...6 {
    var matrixRow = readLine()!.components(separatedBy: " ").map{Int($0)!}
    matrix.append(matrixRow)
}
var sum = -40

for i in 0..<4 {
    for j in 0..<4 {
        var currentSum = matrix[i][j] + matrix[i][j+1] + matrix[i][j+2] + matrix[i+1][j+1] + matrix[i+2][j] + matrix[i+2][j+1] + matrix[i+2][j+2]
        if currentSum > sum {
            sum = currentSum
        }
    }
}

print(sum)