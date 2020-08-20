## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
			m = NULL ## initialize second object
			set <- function(y) {
   			 x <<- y
   			 m <<- NULL} ## set data values within a object
			get <- function() x ## defines the getter for the vector x
			setinverse <- function(inverse) m <<- inverse ## defines the setter for the inverse m
			getinverse <- function() m ## defines the getter for the inverse m

			list(set = set, get = get,
    			setinverse = setinverse,
    			getinverse = getinverse)   ## creates a list


## Write a short comment describing this function

cacheSolve <- function(x, .....) {
        ## Return a matrix that is the inverse of 'x'


		m <- x$getinverse() ##get input object
		if(!is.null(m)) {
          message("getting cached data")
          return(m)} ## Checks if there is a valued cached mean

		 data <- x$get()
     		m <- inverse(data, ...)
    	 	x$setinverse(m)
    	 	m## sets the inverse in the input object
}
