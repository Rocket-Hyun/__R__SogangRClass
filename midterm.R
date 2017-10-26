a <-c("apple","tiger","car","tiger","car")
b<-c(1,3,2)
c<-factor(c("b","c","a","a","a","c","c","b","c","c"))
c(a[c(2,length(a),3)], b[c(2, length(b))])
match(rep(a[1:3],3:1),rep(a[b],2))
(b+2)*b[c(3,1)]
setdiff(a,a[seq(2,length(a),2)])
c[-c(seq(1,length(c),3))] <- 1;c
levels(c) <- c("x","y","y");c
summary(factor(c,levels=c("c","b","a")))
paste(a,"a",b,"b",collapse="\t")
a[which(c("apple","tiger","banana","apple") %in% a)]
grep("[ae][^lp]",a,value=T)

sort(unique(a))
levels(factor(a))
names(table(a))
TEXT <- scan(file="02_data03.txt", what=numeric(), sep=",")
cat(TEXT, file="02_data03.txt",sep="\n",append=T)
