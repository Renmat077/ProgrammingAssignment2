## The below given functions will help in making a cache of the inverse of a matrix

## The makeCacheMatrix will store a vector containing matrix and its inverse. 

makeCacheMatrix <- function(x = matrix()) {
      m<- NULL
  set<- function(y){
        x<<- y
        m<<- NULL
  }
  get<- function()x
  setinverse<- function(solve) m<<- solve
  getinverse<- function() m
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## cacheSolve will retrieve the inverse of the matrix from the cached value that is stored in
## the makeCacheMatrix() object's environment. This works on the argument returned by makeCacheMatrix()

cacheSolve <- function(x, ...) {
        m <- x$getinverse()
           if(!is.null(m)) {
               message("getting cached data")
                 return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}

