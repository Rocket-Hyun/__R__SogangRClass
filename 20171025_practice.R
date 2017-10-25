a<-letters
a
a[c(1,3)]
a[c(TRUE, FALSE, TRUE)]
a[3]
b <- c(TRUE, TRUE,FALSE, TRUE)

a
names(a) <- 1:26
a
a <- c("동","순","자")
b <- c("M","F", "F")
c <- c("A", "B", "C")
DF <- data.frame(row.names=a, 성별=b, 학점=c)
DF[ order(-rank(DF$성별), -rank(rownames(DF)) ,rank(DF$학점)), ]
rownames(DF)
which(colnames(DF) == "학점")

TEXT <- scan(file="howtostartastartup.txt", what="char", quote=NULL)
TEXT2 <- gsub("[[:punct:]]", "", TEXT)
TEXT3 <- tolower(TEXT2)
TEXT.Freq <- table(TEXT3)
head(TEXT.Freq)
head(sort(TEXT.Freq))
head(TEXT.Freq[order(-rank(names(TEXT.Freq)))])
DF <- data.frame(TEXT.Freq)     
DF <- data.frame(row.names = DF$TEXT3, Freq=DF$Freq, Rel.Freq=DF$Freq/sum(DF$Freq))
head(DF)
head(DF[ order(DF$Freq, decreasing=T) , ])
DF$Rel.Freq <- round(DF$Rel.Freq, 3)
DF <- data.frame(DF, Length=nchar(rownames(DF)))
DF <- DF[ order(DF$Freq, decreasing=T) , ]
head(DF)
str(sortedTable)
DF
summary(DF)

paste(1,2,3,c(1,2),sep=",",collapse=";")
grep("startup", gsub("[[:punct:]]","", TEXT))
which(grepl("startup", gsub("[[:punct:]]","", TEXT)))

grep("up$", gsub("[[:punct:]]", "", TEXT), value=T)
TEXT_Pro<-gsub("ed$", "", TEXT)
TEXT_Pro <- gsub("s$", "", TEXT_Pro)
TEXT_Pro <- gsub("ing$", "", TEXT_Pro)
head(sort(table(TEXT_Pro), decreasing=T), 50)
