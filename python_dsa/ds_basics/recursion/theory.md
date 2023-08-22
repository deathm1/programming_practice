# Recursion

## Introduction

A function is called recursive if it calles itself directly or indirectly. Caller function is finished after the called function is finished.

## Function Call Stack

It is a stack which is used for managing function calls. Function calls execute last in - first out (LIFPO) manner.

## Applications of Recursion

### Algorithmic Techniques

1. Dynamic Programming
2. Backtracking
3. Divide and Conquer (Binary Search, Quick Sort, Merge Sort)

### Problems inherently recursive in nature

1. Tower of Hanoi
2. DFS based Traversals (DFS of Graph)

## Problems with Recursion

1. Auxiliary Space
2. Function Call Stack

## Tail Recursion

A function is called recursive if the function does not do anything after the last recursive call. It is good to have tail recursive functions. When there is nothng more to with the last function call, many modern compilers get RID of the function call stack, that is the reason why Tail recursion is efficient. PYTHON DOES NOT DO TAIL CALL ELIMINATION, CPP and JAVA DO. In python it is good to change tail recursion functions to iterative code.

## Examples of Tail Recursive calls

1. Quick sort
2. Post order tree Traversal
