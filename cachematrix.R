## cacheMatrix.R
##
##  This code is a derivative of the makeVector and cachemean functions in the course
##  Programming Exercise 2 example.  Those examples have been modified to handle matricies
##  instead of numeric vectors.
##
##  makeCacheMatrix() function allows for creation retrieval of original and inverted matrix
##  cacheSolve() pulls inverted matrix from cache, otherwise solves inverted matrix and caches

##  makeCacheMatrix() functions:
##  set: usage example: cx$setMatrix(matrix(5:8,2))
##  get: shows the matrix object created with the set
##  setInv: stores the inverted matrix solved in  
##  getInv: shows the inverted matrix 

makeCacheMatrix <- function(x = matrix()) {
     
    ## invMatrix <- NULL     ## init Inverse matrix object
     
     set <- function(y){  ## used create cache matrix object, init Inverse Matrix cache
          x <<- y
          invMatrix <<- NULL
     }
     
     get <- function() {   ## Return the matrix created
          x
     }
     
     setInv <- function(inv) {     ## stores Inverted Matrix solved in cacheSolve
          invMatrix <<- inv
          
     } 
     
     getInv <- function() {   ## returns the Inverted Matrix
          invMatrix
     }
          
     list(
          set = set,
          get = get,
          setInv = setInv,
          getInv = getInv
          )
     
} ## end makeCacheMatrix()


##  cacheSolve functionality
##  checks to see if there is a matrix in cache already
##  If not, then invert the matrix and place into cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
     
}
