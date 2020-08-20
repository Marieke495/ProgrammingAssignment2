## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
			m = NULL ## initialize second object
			set <- function(y) {
   			 x <<- y
   			 m <<- NULL} ## set data values within a object
			get <- function() x ## defines the getter for the vector x
			setmean <- function(mean) m <<- mean ## defines the setter for the mean m
			getmean <- function() m ## defines the getter for the mean m

			list(set = set, get = get,
    			setmean = setmean,
    			getmean = getmean)   ## creates a list


## Write a short comment describing this function

cacheSolve <- function(x, makeCacheMatrix) {
        ## Return a matrix that is the inverse of 'x'


		m <- x$getmean() ##get input object
		if(!is.null(m)) {
          message("getting cached data")
          return(m)} ## Checks if there is a valued cached mean

		 data <- x$get()
     		m <- mean(data, ...)
    	 	x$setmean(m)
    	 	m## sets the mean in the input object
}
