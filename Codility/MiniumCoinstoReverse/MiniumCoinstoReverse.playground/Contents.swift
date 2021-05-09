import UIKit

/*
    Minumum Number of Coins to be reversed
 
    _There are N coins, each showing either heads or tails. We would like all the coins to form a sequence of altemating heads and tails. What is the minimum number of coins that must be reversed to achieve this,

    Write a function:

            public func solution( A : inout [Int]) -> Int

     that, given an array A consisting of N integers representing the coins, returns the minimum number of coins that must be reversed.
     Consecutive elements of array A represent consecutive coins and contain either a O (heads) or a 1 (tails).

     Examples:
        1. Given array A = [1, O, 1, O, 1, II, the function should return 1 . After reversing the sixth coin, we achieve an alternating sequence of coins
        2. Given array A = [1, 1, O, 1, II, the function should return 2. After reversing the first and fifth coins, we achieve an alternating sequence [O, 1.0, 1, 01.
        3. Given array A = [O, 1, O], the function should return O. The sequence of coins is already alienating.
        4. Given array A = [O, 1, 1, O], the function should return 2. We can reverse the first and second coins to get the sequence: [1, O, 1, 0].

    Assume that:

        . N is an integer within the range [1…1001];
        . each element of array A is an integer that can have one of the following values: O, 1.

        
    _In your solution, focus on correctness. The performance of your solution will not be the focus of the assessment.
 */

public func solution(_ A : inout [Int]) -> Int {
    var zero = 0, one = 1
    return min(flipWihNumber(A, &zero),flipWihNumber(A, &one))
}

public func flipWihNumber(_ arr: [Int], _ value: inout Int) -> Int {
    var flipCount = 0
    func flip(value: Int) -> Int{
        return value == 0 ? 1 : 0
    }
    for i in 0..<arr.count {
        if arr[i] != value { flipCount += 1}
        value = flip(value: value)
    }
    return flipCount
}

var arra1 = [1,0,1,0,1,1]
var arra2 = [1,1,0,1,1]
var arra3 = [0,1,0]
var arra4 = [0,1,1,0]

let ans1 = solution(&arra1)
let ans2 = solution(&arra2)
let ans3 = solution(&arra3)
let ans4 = solution(&arra4)
