### Put comments here that give an overall description of what your
## functions do

# first function creates a matrix, second use this matrix to inverse it

# the input matrix must be invertible


## Write a short comment describing this function
# creates a "matrix", which containing a function to set, get the inverse of the matrix 


makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) s <<- solve
  getsolve <- function() s
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## Write a short comment describing this function
# computes the inverse of the matrix returned by the above function
# if the inverse is now calculated it takes thaa inverse from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  s <- x$getsolve()
  if(!is.null(s)){
    message("getting cached data")
    return(s)
  }
  data <- x$get()
  s <- solve(data, ...)
  x$setsolve(s)
  s
}
