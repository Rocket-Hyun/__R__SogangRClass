x <- sample(c("low","mid","high"),10,replace=T,prob=c(0.2,0.5,0.3))
x
str(x)
summary(x)
table(x)
summary(table(x))
sort(table(x))
x
y <- factor(x)
y
str(y)
summary(y)
y <- factor(x, levels=c("low", "mid", "high"))
y
levels(y)
y
y <- factor(y, levels=c(levels(y), "very.high"))
y
levels(y)

x<- factor(rep(c("long", "intmed", "short"), 1:3), levels=c("short","intmed","long"))
x
x <- factor(x, levels=c(levels(x)), label=c("short", "intermed", "long"))
x


x<-sample(c("low","mid","high"),10,replace=T)
y<-factor(x)
data <- data.frame(num=1:10,pos1=x,pos2=y)
data$pos1 <- factor(data$pos1, levels = levels(data$pos1)[c(2,3,1)])
data$pos2 <- factor(data$pos2, levels = levels(data$pos2)[c(3,2,1)])
str(data)
table(data$pos1)
table(data$pos2)
