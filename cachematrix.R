## Put comments here that give an overall description of what your
## functions do


## this function generate a matrix, and make a list of functions related to caching  

makeCacheMatrix <- function(x = matrix()) {
      inv <- NULL
      set <- function(y) {
        x <<- y
        m <<- NULL
      }
      get <- function() x
      setInverse <- function(inverse) inv <<- inverse
      getInverse <- function() inv
      list(set = set, get = get,
           setInverse = setInverse,
           getInverse = getInverse)
}



## this function basicly calculate the inverse of matrix once, and recall it
## from cach as long as it was calculated and matrix did not change. it return the inverse 
## with a message if cached, and calculate the inverse (if not cached) if not cached

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      m <- x$getInverse()
      if(!is.null(m)) {
        message("getting cached data")
        return(inv)
      }
      mat <- x$get()
      inv <- solve(mat, ...)
      x$setInverse(inv)
      inv
}
