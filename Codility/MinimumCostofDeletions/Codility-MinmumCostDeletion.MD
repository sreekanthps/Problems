# Minumum Cost of Necessary deletions

_You are given a string S. Deletion of the K-th letter of S costs CIKI. After deleting a letter, the costs of deleting other letters do not change.For example, for S = "ab' and C = [1, 3], after deleting 'a', deletion of 'b' will still cost 3._

_You want to delete some letters from S to obtain a string without two identical letters next to each other. What is the minimum total cost of deletions to achieve such a string?_

_Write a function:_

_class Solution { public int solution(StrIng S, into C);_

_that, given string S and array C of integers, both of length N, returns the minimum cost of all necessary deletions._

_Examples:_

1. Given S = "abccbd" and C = [O, 1, 2, 3, 4, 5], the function should return 2. You can delete the first occurrence of 'c' to achieve "abcbd'._

2. Given S = "aabbcc" and C = [1, 2, 1, 2, 1, 21, the function should retum 3. By deleting all letters with a cost of 1, you can achieve string "abc"._

3. Given S = "aaaa" and C = 13, 4, 5, 61, the function should return 12. You need to delete all but one letter 'a', and the lowest cost of deletions is 3+4+5=12._

4. Given S = "ababa• and C = [10, 5, 10, 5, 10], the function should return O. There is no need to delete any letter._

_Write an efficient algorithm for the following assumptions:_

- string S and array C have length equal to N;_

- N is an integer within the range [1..100,0001;_

- string S consists only of lowercase letters ('a'-'z);_

- each element of array C is an integer within the range [0..1,000]._




