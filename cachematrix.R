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
    list(setVariable = setVariable, 
         getVariable = getVariable,
         setInverse = setInverse,
         getInverse = getInverse)   
} # End of makeCacheMatrix


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

## ----- TEST CASES -----
## This section is optinal for the user, you can use it to test the above
## functions, you can add your own cases or modify the given ones.

## Testing makeCacheMatrix
# Generating a matrix
A <- matrix(c(1,0,5,2,1,6,3,4,0),nrow=3,ncol=3)
# Making the cacheMatrix object
test_CacheMatrix <- makeCacheMatrix(A)
# Checking if we returned a list
if (is.list(test_CacheMatrix)){
    print("Good!, we returned the right data type")
}
# Printing the elements of the list: It should be "getVariable", "setVariable",
# "getInverse", and "setInverse"
print(ls(test_CacheMatrix))