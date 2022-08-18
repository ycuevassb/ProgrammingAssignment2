## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse # save inverse
  inverseget <- function() i
  list(set = set,
       get = get,
       setinverse = setinverse,
       inverseget = inverseget)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$inverseget()
  if (!is.null(i)) {
    message("getting cached in progress")
    return(i)
  }
  df <- x$get()
  i <- solve(df, ...) # solve inverse matrix
  x$setinverse(i)
  i
}
