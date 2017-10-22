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

a <- c('홍길동','홍길순','홍길자')
b <- c('홍길동','홍길순','홍길자')
c <- c(60, 50, 70)
DATA <- data.frame(row.names=a, 국어=b, 영어=c)
DATA
