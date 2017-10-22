c(1,4,3) -> x
is.vector(x)
names(x) <- c("one", "two", "three")
str(x)
y <- attributes(x)
y
names(x) <- c("one", "two", "three")

x <- c("a","b","c","d")
y <- c("g","x","d","e","f","a","c")
match(y,x)
