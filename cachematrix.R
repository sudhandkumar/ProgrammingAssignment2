## Put comments here that give an overall description of what your
## functions do
## The objective of the problem is to solve potentially time consuming computations.
## There are two functions that are comprised of in the solution
## makeCacheMatrix - is the function that is used to cache the inverse of the matrix. 
## cacheSolve is the function that is used create the inverse of the matrix 


## Write a short comment describing this function
## The below function takes the  matrix object and returns a list object.
## The list object sets the value of the matrix, gets the value of the matrix
## The list object sets the inverse of the matrix, gets the inverse of the matrix
 

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setInverse <- function(matMean) m <<- matMean
  getInverse <- function() m
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
  
}


## Write a short comment describing this function
## This function creates the inverse of the matrx created from the above function.
## This function checks if the inverse matrix is existing if not creates the inverse matrix
## and uses the makeCacheMatrix to cache the same.  

cacheSolve <- function(x) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setInverse(m)
  m
  
  }
