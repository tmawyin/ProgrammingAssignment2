## R Programming - Coursera
## by Tomas Mawyin
## Assignment 2

## The following script is designed to cache the inverse of a matrix.
## The function is used to store the inverse of a matrix in case the matrix
## does not change instead of calculating the inverse every time.
## This is advantageous for really large matrices as in the test case shown

## makeCacheMatrix: creates an "chache matrix" object that performs four
## basic operations: sets or gets the data as specified by the user, and
## sets or gets the cached inverse matrix.
## Each line of code is commented to make it clear.

makeCacheMatrix <- function(x = matrix()) {
    # Define the initial variable holding the inverse of the matrix
    inverse <- NULL
    
    # SET: sets the data in x based on the user defined yMatrix variable
    setInverse <- function(yMatrix) {
        # yMatrix is stored as x from the parent environment 
        x <<- yMatrix
        inverse <<- NULL
    } # End of setInverse
    
    # 
    
} # End of makeCacheMatrix


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
