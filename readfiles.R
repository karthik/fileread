# example data.frame
df <- data.frame(a = 1:3,
	b = 4:6,
	c = 7:9,
	fname = c("f1.txt", "f2.txt", "f3.txt"),
	stringsAsFactors = FALSE)

# > df
#   a b c  fname
# 1 1 4 7 f1.txt
# 2 2 5 8 f2.txt
# 3 3 6 9 f3.txt

# This function reads a file from a filename
read_file <- function(fname) {
	readChar(fname, file.info(fname)$size)
}

library(dplyr)
df %>% 
	mutate(cc = read_file(.$fname))
	# Nick, remember that fname here is the actual column name