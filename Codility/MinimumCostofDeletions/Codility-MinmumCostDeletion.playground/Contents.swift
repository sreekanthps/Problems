import UIKit



/*
    You are given a string S. Deletion of the K-th letter of S costs CIKI. After deleting a letter, the costs of deleting other letters do not change.For example, for S = "ab' and C = [1, 3], after deleting 'a', deletion of 'b' will still cost 3.
    You want to delete some letters from S to obtain a string without two identical letters next to each other. What is the minimum total cost of deletions to achieve such a string?
    Write a function:
 
            class Solution { public int solution(StrIng S, into C);
        
    that, given string S and array C of integers, both of length N, returns the minimum cost of all necessary deletions.
    Examples:
        1 . Given S = "abccbd" and C = [O, 1, 2, 3, 4, 5], the function should return 2. You can delete the first occurrence of 'c' to achieve "abcbd'.
        2. Given S = "aabbcc" and C = [1, 2, 1, 2, 1, 21, the function should retum 3. By deleting all letters with a cost of 1, you can achieve string "abc".
        3. Given S = "aaaa" and C = 13, 4, 5, 61, the function should return 12. You need to delete all but one letter 'a', and the lowest cost of deletions is 3+4+5=12.
        4. Given S = "ababa• and C = [10, 5, 10, 5, 10], the function should return O. There is no need to delete any letter.
 
 
    Write an efficient algorithm for the following assumptions:
 
        • string S and array C have length equal to N;
        • N is an integer within the range [1..100,0001;
        • string S consists only of lowercase letters ('a'-'z);
        • each element of array C is an integer within the range [0..1,000].
 
 */


public func solution(_ S: inout String, _ C: inout [Int]) -> Int {
      let SArr = Array(S)
    var minCost = 0 , i = 0
    while (i < S.count - 1) {
       
        if (SArr[i] == SArr[i+1]) {
            if (C[i] < C[i+1]) {
                minCost += C[i]
            } else {
                minCost += C[i + 1]
                C[i+1] = C[i]
            }
        }
        i += 1
    }
    return minCost
}
var string = "abccbd"
var cost = [0,1,2,3,4,5]

let values = solution(&string, &cost)
print("values: \(values)")
