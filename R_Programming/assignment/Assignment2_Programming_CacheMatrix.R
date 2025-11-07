# Function to create a special matrix object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {  # Create a special matrix object
  inv <- NULL  # Initialize cached inverse as NULL
  
  set <- function(y) {  # Function to set a new matrix
    x <<- y  # Assign new matrix to parent environment
    inv <<- NULL  # Reset cached inverse because matrix changed
  }
  
  get <- function() x  # Function to get the current matrix
  
  setInverse <- function(inverse) inv <<- inverse  # Function to set cached inverse
  
  getInverse <- function() inv  # Function to get cached inverse
  
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
  # Return a list of functions for external use
}

# Function to compute the inverse of the matrix created by makeCacheMatrix
cacheSolve <- function(x, ...) {  # Takes the special matrix object as input
  inv <- x$getInverse()  # Check if inverse is already cached
  
  if (!is.null(inv)) {  # If cached inverse exists
    message("getting cached data")  # Print message
    return(inv)  # Return cached inverse immediately
  }
  
  data <- x$get()  # Retrieve the matrix if inverse not cached
  inv <- solve(data, ...)  # Compute the inverse
  x$setInverse(inv)  # Cache the computed inverse
  
  inv  # Return the newly computed inverse
}
