## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function

## This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
  invsamp <- NULL
  set <- function(x) {
    samp <<- x
    invsamp <<- NULL
  }
  get <- function() samp
  setInv <- function(inverse) inv <<- inverse
  getInv <- function() invsamp
  list(set = set,
       get = get,
       setInv = setInv,
       getInv = getInv)
}


## Write a short comment describing this function
## This function computes the inverse of the special "matrix" created by makeCacheMatrix above.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- samp$getInv()
  if (!is.null(inv)) {
    message("Getting Data!!")
    return(invsamp)
  }
  mat <- samp$get()
  invsamp <- solve(mat, ...)
  samp$setInv(invsamp)
  invsamp
}
