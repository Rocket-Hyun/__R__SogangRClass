TEXT <- scan(file="03_WhatIsR.txt", what="char", quote=NULL)
head(TEXT)
tail(TEXT)
length(TEXT)
str(TEXT)

#연습문제
TEXT <- tolower(TEXT)
Freq.TEXT <- sort(table(TEXT), decreasing = T)
Freq.Data <- data.frame(Freq.TEXT)
Freq.Data <- data.frame(row.names=Freq.Data$TEXT,
                        Freq=Freq.Data$Freq,
                        Length=nchar(rownames(Freq.Data)))

head(Freq.Data)
rownames(Freq.Data) == names(Freq.TEXT)
