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
    
    # setVariable: sets the data in x based on the user defined yMatrix variable
    setVariable <- function(yMatrix) {
        # yMatrix is stored as x from the parent environment 
        x <<- yMatrix
        inverse <<- NULL
    } # End of setInverse
    
    # getVariable: returns the value of the data, in this case x
    getVariable <- function() x
    
    # setInverse: sets the inverse (invData) to the object variable "inverse"
    setInverse <- function(invData) inverse <<- invData
    
    # getInverse: returns the value of the inverse matrix
    getInverse <- function() inverse
    
    # We create a list with all the functions and return it
    list(set = setVariable, 
         get = getVariable,
         setInverse = setInverse,
         getInverse = getInverse)
}
    
} # End of makeCacheMatrix


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
