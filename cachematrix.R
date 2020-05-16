## makeCacheMatrix is makes a special matrix object which has four functions
##cacheMatrix checks if its inverse is already cslculated if not
##it calculates and stores it in matrix object

## Write a short comment describing this function
##set(matrix):sets x to y and inverse as null because it needs to be calculated
##get(): reurn matrix
##setInverse(solve):sets solve to I solve being inverse of x
##getInverse():returns inverse 

makeCacheMatrix <- function(x = matrix()) {
  I<-NULL
  set=function(y){x<<-y
  I<<-NULL
  }
  get=function()x
  setInverse=function(solve)I<<-solve
  getInverse=function()I
  list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
     m=x$getInverse()
     if(!is.na(m)){
       return(m)
     }
     mat=x$get()
     In=solve(mat)
     x$setInverse(In)
     In
     
     
}
