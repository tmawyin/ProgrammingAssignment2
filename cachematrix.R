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



## This function returns the inverse of the matrix "x" if it is cached,
## if the matrix inversed was not cached, the function calculates the inverse
## and caches it for further use. Note that x is an object of makeCacheMatrix

cacheSolve <- function(x, ...) {
    # Let's get the inverse and check if it was cached before
    inverse <- x$getInverse()
    # If the value is NULL we print a message and return the cached value
    if(!is.null(inverse)) {
        message("Retrieving the cached matrix... ")
        return(inverse)
    }
    # Let's get the actual matrix using the getVariable function
    inverseData <- x$getVariable()
    # Using R function to invert a matrix
    inverse <- solve(inverseData, ...)
    # We can now cache the inverse using the setInverse function
    x$setInverse(inverse)
    # Returning the inverse function
    inverse
}

## ----- TEST CASES -----
## This section is optinal for the user, you can use it to test the above
## functions, you can add your own cases or modify the given ones.

## Testing the makeCacheMatrix function:
# Generating two test matrices, that can be inverted
A <- matrix(c(1,0,5,2,1,6,3,4,0),nrow=3,ncol=3)
B <-matrix(c(7,0,-3,2,3,4,1,-1,-2),nrow=3,ncol=3)
# Making the cacheMatrix object
test_CacheMatrix <- makeCacheMatrix(A)
# Checking if we returned a list
if (is.list(test_CacheMatrix)){
    message("Good!, we returned the right data type")
}else{
    message("Something went wrong!")
}
# Printing the elements of the list: 
# "getVariable", "setVariable", "getInverse", and "setInverse"
print(ls(test_CacheMatrix))


## Testing the cacheSolve function: