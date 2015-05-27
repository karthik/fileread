# example data.frame
df <- data.frame(a = 1:3,
				 b = 4:6,
				 c = 7:9,
				 fname = c("f1.txt", "f2.txt", "f3.txt"),
				 stringsAsFactors = FALSE)


# This function reads a file from a filename
read_file <- function(fname) {
	paste(readLines(fname), collapse = " ")
}

library(dplyr)
df %>% mutate(cc = read_file(fname))