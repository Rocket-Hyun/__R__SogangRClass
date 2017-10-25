x <- sample(c("male", "female"), size=10, replace=T)
summary(x)
y <- factor(x)
summary(y)
cat(x)
cat(y,'\n')
cat(y,sep='\n')
as.vector(y)
z <- 1:9
str(x)
str(y)
str(z)
str(c(1,3,4))
summary(z)
y
data <- data.frame(num=1:10, pos1=x, pos2=y)
data
str(data)
