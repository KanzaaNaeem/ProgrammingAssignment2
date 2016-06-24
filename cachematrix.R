## The first function makeCacheMatrix creates a special "vector" which is a 
##list to get, set and set inverse or get inverse of a given matrix

makeCacheMatrix <- function(x = matrix()) {
         inv<-NULL
         set<-function(y){
         	x<<-y
         	m<<-NULL
         }
         get<-function() x
         setinv<-function(invr) inv<<-invr
         getinv<-function() inv
         list(set=set, get=get, setinv=setinv, getinv=getinv)
}


## This checks wether the matrix in question has a cached output or not.
##If the inverse already exists, it simply retuns the cached data else it computes the inverse.
cacheSolve <- function(x, ...) {
        inv <-x$getinv()
        if(!is.null(invs)){
        	message("Getting cached data")
        	return (inv)
        }
        data <-x$get()
        inv <-solve(data,..)
        x$setinv(inv)
}
