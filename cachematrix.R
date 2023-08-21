## Put comments here that give an overall description of what your
## functions do

##These functions work to cache the inverse of a matrix and them when calculating the inverse of a matrix
#the code first checks to see if the inverse has already been cached. If it has it retrieves the result, if not
#it calculates the inverse

## Write a short comment describing this function
#creates a matrix, sets and gets the value of the matrix then sets and gets the value of the inverse of the matrix



makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <-function(solve) i <<- solve
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}



## Write a short comment describing this function
##calculates the inverse of the matrix created in the first function, but first checks to see if inverse has already
#been calculated

cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
  ## Return a matrix that is the inverse of 'x'
}




