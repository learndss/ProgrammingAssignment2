## A set of two functions that will do below:
## 1. If an inverse of a matrix already exists -
##        a. if Exists fetches it from cache instead of recalculating
##        b. if Not Exists then calculates the inverse and stores the result in cache for future use
        
## Defines four methods set, get, setInverse and getInverse that will set & get the matrix and its inverse


makeCacheMatrix <- function(x = matrix()) {
  matrixM <- NULL
  set <- funciton(y)
          {
            x <<- y
            matrixM <- NULL
          }
  get <- function()
          {
            matrixM
          }                 
  setInverse <- function(inverseM) matrixM <<- inverseM
  getInverse <- function() matrixM
  list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
}


## A function that will check for existence of inverse in cache and fetches it on existence. 
## The function will also calculate the inverse and stores it if the inverse doesn't exist in the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  matrixM <- x$getInverse()
  if(!is.null(matrixM)){
    message("getting data from cache")
    return(matrixM)
  }
  data <- x$get()
  matrixM <- solve(data,...)
  x$setInverse(matrixM)
  matrixM
}
