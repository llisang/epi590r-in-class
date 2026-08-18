
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

#no value for power included
raise <- function(x, power = 2){
	raised_value <- x^power
	return(raised_value)
}

raise(x = 6)

#function that takes a vector of numbers and returns the standard deviation manually
x <- c(25, 50, 75, 100)

demeaned_x <- x - mean(x)
squared_demeaned_x <- demeaned_x^2
sum_of_squares <- sum(squared_demeaned_x)
n_minus_1 <- length(x)-1
std_dev <- sqrt(sum_of_squares/n_minus_1)

new_sd <- function(x){
	demeaned_x <- x - mean(x)
	squared_demeaned_x <- demeaned_x^2
	sum_of_squares <- sum(squared_demeaned_x)
	n_minus_1 <- length(x)-1
	std_dev <- sqrt(sum_of_squares/n_minus_1)
	return(std_dev)
}

new_sd(x)
sd(x)

#modify your function to remove the NA values before calculating the standard deviation
new_sd <- function(x, na.rm = TRUE){
	if (na.rm) {new_x <- na.omit(x)}
	else {new_x <- x}

	if(length(new_x) <= 1) {return_val <- NA}
	else {
				demeaned_x <- new_x - mean(new_x)
				squared_demeaned_x <- demeaned_x^2
				sum_of_squares <- sum(squared_demeaned_x)
				n_minus_1 <- length(new_x)-1
				std_dev <- sqrt(sum_of_squares/n_minus_1)
				}

	return(std_dev)
}

new_sd(nlsy$income)
sd(nlsy$income)
