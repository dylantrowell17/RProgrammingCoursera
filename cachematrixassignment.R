setwd("C:/Users/dylan/OneDrive/Documents/RProgrammingCoursera")

## I set x as a matrix.
## I set m as NULL. 
## I also set mean as solve.

##makeCacheMatrix is a function which creates a matrix object that can
##cache its inverse for the input (which is an invertible square matrix) 

makeCacheMatrix <- function(x = matrix(sample(1:100, 9), 3, 3)) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
} 


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getsolve()
  if(!is.null(m)) {
    message("getting inversed matrix")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setsolve(s)
  m
}
