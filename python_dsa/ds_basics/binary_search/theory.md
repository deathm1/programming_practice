# Binary Search [O(log n)]

## Introduction

Binary search is an optimum searching algorithm for a sorted array. The idea of Binary Search is to compare the elements of a list with middle element.

## Recursive Approach vs Iterative Approach

Recursive approach is slightly inefficient than Iterative Approach because of the auxiliary space of Function call stack

1. Iterative => TC: O(log(n)), AS: O(1)
2. Recursive => TC: O(log(n)), AS: O(log(n))

## Best, Worst and Average Case

1. The average case occurs in the Linear Search Algorithm when the item to be searched is in some where middle of the Array.
2. The best case occurs in the Linear Search Algorithm when the item to be searched is in starting of the Array.
3. The worst case occurs in the Linear Search Algorithm when the item to be searched is in end of the Array.

4. Binary Search is a linear searching algorithm and takes O(log n) when array is sorted.
5. T(n) = T(n / 2) + k , where k is constant produces a complexity of O(log n)

For 11 items, Binary search required total number of comparisons for each item as following:
Therefore, total number of caparisons required = 1*1 + 2*2 + 4*3 + 4*4 = 33 Average comparisons required for 11 items = 33/11 = 3 So, option (A) is correct.

## Key Points to Remember

If element is at 1 position then it requires 1 comparison. If element is at 2 position then it requires 2 comparison. If element is at 3 position then it requires 3 comparisons. Similarly, If element is at n position then it requires n comparison.

Total comparison = n(n+1)/2
For average comparison = (n(n+1)/2) / n = (n+1)/2
