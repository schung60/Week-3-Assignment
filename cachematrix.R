## These two functions work together to cache the inverse of
## a matrix. The 1st one creates a special matrix that can
## cache its inverse. The 2nd one computes the inverse of the
## matrix or returns the inverse from the cache if already
## computed.

## This function caches the inverse of a special matrix.

makeCacheMatrix <- function(x = matrix()) {
            inv <- NULL
            set <- function(y) {
                    x <<- y
                    inv <<- NULL
            }
            get <- function() x
            setinverse <- function(inverse) inv <<- inverse
            getinverse <- function() inv
            list(set = set, get = get,
                  setinverse = setinverse,
                  getinverse = getinverse)
}


## This function computes or returns the inverse of a matrix.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()
        if(!is.null(inv)) {
                message("Getting cached data.")s <
                return(inv)
        }
        data <- x$get()
        inv <- inverse(data, ...)
        x$setinverse(inv)
        inv
}
