a <- c("the first", "the second", "the third")
a[a=="the"]
a[grep("the", a)]
grep("the",a,value=T)
grep("x",a)


# 38쪽 연습문
TEXT <- scan(file="03_WhatIsR.txt", what="char", quote=NULL)
head(TEXT)
length(TEXT)
TEXT2 <- gsub("[[:punct:]]","",TEXT)
length(TEXT2)
head(TEXT2)
TEXT3<- tolower(TEXT2)
table(TEXT3)
mytable <- sort(table(TEXT3), decreasing=T)
head(mytable)
DF <- data.frame(mytable)
DF <- data.frame(row.names = DF$TEXT3, Freq=DF$Freq, Rel.Freq=DF$Freq/sum(DF$Freq))
head(DF)
write.table(DF, file="20171019Practice.txt", sep="\t", quote=F, col.names = NA)

