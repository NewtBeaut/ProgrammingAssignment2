## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    ## Create a matrix 'x' that can cache its inverse
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmat <- function(matrix) m <<- matrix
  getmat <- function() m
  list(set = set, get = get,
       setmat = setmat,
       getmat = getmat)
}

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
  m <- x$getmat()
    ## Is matrix cached?
  if(!is.null(m)) {
    message("getting cached data")
    m
  }
  data <- x$get()
  m <- solve(data)
  x$setmat(m)
  m
}
