
# Assignment 2 – Caching the Inverse of a Matrix: Detailed Analysis Report

This document summarizes the analytical steps performed to create a special matrix object in R that caches its inverse. The workflow demonstrates the creation of functions using R's scoping rules, caching strategy, and practical usage of matrix inversion, providing a reproducible pipeline for this programming assignment.

---

## Caching the Inverse of a Matrix
**Prepared by:** Mohamed Hussein  
**Date:** 2025-01-14  

**R Script:** [Assignment2_Programming_CacheMatrix.R](Assignment2_Programming_CacheMatrix.R)

---

## Input
Square, invertible matrices  
**Description:** Matrices provided by the user or generated in R to demonstrate caching of inverse computations.  

---

## Output
- Cached inverse of the matrix  
- Message indicating when cached data is used  
- Reproducible inverse computation without recomputation  

---

## Functions Implemented

### `makeCacheMatrix`
Creates a special matrix object that can cache its inverse.  
- **set(y):** Assign a new matrix and clear cached inverse  
- **get():** Return the current matrix  
- **setInverse(inverse):** Cache the computed inverse  
- **getInverse():** Retrieve the cached inverse  

### `cacheSolve`
Computes the inverse of the special matrix returned by `makeCacheMatrix`.  
- Checks for cached inverse before computation  
- If cached, returns inverse directly with message `"getting cached data"`  
- If not cached, computes inverse using `solve()` and caches it  

---

## Processing Steps
1. Created the special matrix object using `makeCacheMatrix()`  
2. Checked for cached inverse using `cacheSolve()`  
3. If inverse not cached, computed it with `solve()`  
4. Cached the computed inverse for future use  
5. Verified caching by re-running `cacheSolve()` to obtain cached message  

---

## Example

```r
# Create a 2x2 matrix
mat_obj <- makeCacheMatrix(matrix(c(2,1,1,2), 2, 2))

# Compute inverse for the first time
cacheSolve(mat_obj)
# Output:
#      [,1]       [,2]
# [1,] 0.6666667 -0.3333333
# [2,] -0.3333333 0.6666667

# Compute inverse again → uses cache
cacheSolve(mat_obj)
# Output:
# getting cached data
#      [,1]       [,2]
# [1,] 0.6666667 -0.3333333
# [2,] -0.3333333 0.6666667
````

---

## Notes

* The assignment demonstrates **caching for computational efficiency** in R
* The `<<-` operator allows storing values in the parent environment to preserve state
* Only works for **square invertible matrices**
* `cacheSolve()` avoids unnecessary recalculation, making repeated inversions faster

---

## Takeaways

* Special matrix objects can effectively store intermediate computations
* R scoping rules (`<<-`) can be used to maintain persistent state
* Caching improves performance for repeated expensive operations like matrix inversion




