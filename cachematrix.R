## cacheMatrix.R

## makeCacheMatrix() function allows for creation retrieval of original and inverted matrix
## cacheSolve
## setMatrix: usage example: cx$setMatrix(matrix(5:8,2))
## getMatrix: shows the matrix object created with the set
## setInverseMatrix: 
## getInverseMatrix: 

makeCacheMatrix <- function(x = matrix()) {
     
     invMatrix <- NULL
     
     setMatrix <- function(y){  ## derived from makeVector set example
          x <<- y
          invMatrix <<- NULL
     }
     
     getMatrix <- function() {
          x
     }
     list(
          setMatrix = setMatrix,
          getMatrix = getMatrix
          )
     

} ## end makeCacheMatrix()


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
