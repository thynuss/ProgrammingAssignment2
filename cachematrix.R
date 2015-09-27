## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
### The two functions I use for this assignment are makeCacheMatrix(xm = matrix()) and cacheSolve(xm). 
# The makeCacheMatrix function will set matrix, get matrix, set inverse, and get inverse.
# Functions setM and getM are for setting and getting input matrix xm.  
# Functions setInvM and getInvM are for setting and getting the calculated inverse matrix. 
# The variable invM is a free variable in makeCacheMatrix, with assignment operator <<-

#makeCacheMatrix
makeCacheMatrix <- function(xm = matrix){
  invM <- NULL
  setM <- function(ym) {
    print("In setM.")
    ym
    invM <<- NULL             
    xm <<- ym
    print("In setM")
    xm
  }
  getM <- function() {
    print("In getM.")
    xm
  }
  setInvM <- function(im) {
    print("In setInvM.")
    invM <<- im
  }
  getInvM <- function() {
    print("In invM.")
    invM
  }
  list(setM = setM, getM = getM, setInvM = setInvM, getInvM = getInvM)
}

#solveCache
cacheSolve <- function(x, ...) {
  print("in cacheSolve, xm = ")
  iM <- xm$getInvM()
  if(!is.null(iM)) {
    message("getting cached data")
    return (iM)
  }
  data <- xm$getM()
  iM <- solve(data, ...)
  xm$setInvM(iM)
  iM
}
