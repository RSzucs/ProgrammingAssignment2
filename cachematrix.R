## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  list(set=function(arg) {
      x <<- arg
      inv <<- NULL
    }, 
    get=function() x, 
    setinverse=function(inverse) inv <<- inverse, 
    getinverse=function() inv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data.")
    return(inv)
  }
  inv <- solve(x$get())
  x$setinverse(inv)
  inv
}
