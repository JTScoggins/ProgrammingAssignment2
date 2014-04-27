## cacheMatrix.R
##
##  This code is a derivative of the makeVector and cachemean functions in the course
##  Programming Exercise 2 example.  Those examples have been modified to handle matricies
##  instead of numeric vectors. Replace mean with the solve() function to invert the matrix.
##  Became real clear after reading Fu Sheng Wang's explaination and test case in the 
##  discussion forum and googling to find the solve() function to invert the matrix.

## Test Case to see if it works:
## > a <- makeCacheMatrix()
## > a$set(matrix(rnorm(16), 4) )
## > a$get()          ## should see matrix with random numbers
## > a$getInv()       ## should see NULL, not in cache yet
## > cacheSolve(a)    ## should see inverted Matrix
## > cacheSolve(a)    ## should see cache message and inverted matrix
## > a$getInv()       ## now inverted matrix is in cache can get from here too

##  makeCacheMatrix() functionality:
##  set: sets the original matrix to be inverted in cacheSolve()
##  get: shows the matrix object created with the set
##  setInv: stores the inverted matrix solved in cacheSolve()
##  getInv: shows the inverted matrix 

makeCacheMatrix <- function(x = matrix()) {
     
     invMatrix <- NULL ## init Inverse matrix object, maybe redundant b/c cache is init'd in set
                         ## works if you take it out but makeVector example does this too ...
     
     set <- function(y){  ## used create cache matrix object, init Inverse Matrix cache
          x <<- y
          invMatrix <<- NULL  ## init Inverse matrix cache
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


##  cacheSolve() functionality
##  checks to see if there is a matrix in cache already
##  If not, then invert the matrix and place into cache

cacheSolve <- function(x, ...) {
     inv <- x$getInv()
     if (!is.null(inv)) {
          message("Returning Cached Matrix, saving CPU cycles one step at a time :-)")
          return(inv)
     }
     data <-x$get()  ## put the original matrix into data and pass to solve
     inv <- solve(data, ...)
     x$setInv(inv)
     return(inv)
     
} ##  end cacheSolve()