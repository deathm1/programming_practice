# Sorting

## Introduction

Just like any other programming language python has inbuilt sorting functions.

### sort()

1. Works only for lists
2. Sorts in-place
3. Can be used for user defined class objects.

### sorted()

1. Works for any iterable.
2. Does not modify the parsed container returns a list of sorted items, becuase some iterable are immutable.
3. Can be used for user defined class objects.

Both the functions use TimSort and both are stable.

## TimSort

Python uses Merge sort and insertion sort internally.

# Asymtotic Analysis

Worst Case TC: O(nlog(n))

# Stability in Sorting Algorithms

1. Sorts the Array.
2. Same items will retain original order.
3. Stability is important when we are sorting objects of many fields.
4. Stability is not important in cases like an integer array.

# Stable Sorting Algorithms

1. Bubble Sort : Compares Adjacent Elements. If two same items appear, it will not swap.
2. Insertion Sort
3. Merge Sort

# Unstable Sorting Algorithms

1. Selection Sort : Finds max element, and swaps it with last element.
2. Quick Sort
3. Heap Sort

# Sorting Algorithms

## Bubble Sort (Stable)

1. Simple Comparison Based algorithm.
2. TC: O(n^2)
3. In-Place algorithm

## Selection Sort (Unstable)

1. Simple Comparison Based algorithm.
2. TC: O(n^2) in all cases
3. Less memry writes than other algorithms.
4. Basic idea for head sort
5. It is not stable.
6. In-Place algorithm

## Insertion Sort (Stable)

1. TC: O(n^2) in worst case, as we make n(n-1)/2 iterations
2. In-Place and stable
3. Used for small sized arrays (Tim Sort and Intro Sort)
4. TC: O(n) in Best Case, Array is already sorted

## Merge Sort (Stable)

1. Divide and Conquer Algorithm
2. Theta(nlog(n)) and O(n) Aux Space
3. Well suited for linked lists, works in O(1) Aux space.
4. Used in External sorting
5. Outperformed by quick sort for arrays.
