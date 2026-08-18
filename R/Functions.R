
#creating a function
x <- 3
x^2
square <- function(x){
	squared_val <- x^2
	return(squared_val)
}

square(9)


#arguments and defaults
x <- 5
x^7
power <- 2
raise <- function(x,power) {
	raised_value <- x^power
	return(raised_value)
}

raise(x = 2, power = 3)


