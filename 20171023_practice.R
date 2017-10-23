TEXT2 <- scan(file="03_CakeRecipe.txt", what="char", quote=NULL)
TEXT2[TEXT2=="The"] <- "the"
TEXT2[TEXT2=="A"] <- "a"
cat(TEXT2, file="TEXT2.txt", sep="\n")
Freq.Data <- data.frame(sort(table(TEXT2), decreasing=T))
Freq.Data <- data.frame(row.names=Freq.Data$TEXT2,Freq=Freq.Data$Freq, Rel.Freq=round(Freq.Data$Freq/sum(Freq.Data$Freq), 3))
head(Freq.Data)

a <- 'The "R" project for statistical computing'
b <- "The \"R\" project for statistical computing"
a
cat(a)
b
cat(b)
cat(b, '\n')
TEXT2
cat(TEXT2[1:30])
cat(TEXT2[1:30], '\n')
a
