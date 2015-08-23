## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## function makeCacheMatrix stores a matrix in memory
makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function(y){
		x <<- y
		inv <<- NULL
	}
	get <- function() x
	setinv <- function(Inverse) inv <<- Inverse
	getinv <- function() inv
	list(	set=set,
     		get=get,
     		setinv=setinv,
     		getinv=getinv)
}


## Write a short comment describing this function
## function cacheSolve uses the package MASS to compute the inverse of a martix
## using the command ginv()
## will try to load MASS package
## If the package is not loaded it will install it
#
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
if(library(MASS, logical.return=TRUE)==TRUE){	
	print("Package MASS is loaded correctly")
	} else {
		print("trying to install MASS")
		install.packages("MASS")
		if(library(MASS, logical.return=TRUE)==TRUE){
			print("package MASS installed and loaded")
			} else {
			stop("could not install package MASS")
			}
		}

Xinput <- x$get()
inv <- ginv(Xinput)
return(inv)
}
#


