Freq2 <- Freq.TEXT[order(rownames(Freq.TEXT), decreasing=T)]
head(Freq2)
Freq3 <- Freq.TEXT[order(-rank(names(Freq.TEXT)))]
head(data.frame(Freq2))
Freq.Data <- data.frame(row.names=names(Freq.TEXT), Freq=as.numeric(Freq.TEXT))
head(Freq.Data)
Freq.Data <- data.frame(Freq.Data,
                        Rel.Freq= Freq.Data$Freq/sum(Freq.Data$Freq))
head(Freq.Data)
sum(Freq.Data$Rel.Freq)
Freq.Data$Rel.Freq <- round(Freq.Data$Rel.Freq, 3)
head(Freq.Data)

write.table(Freq.Data,file="myfreq.txt",quote=F,sep="\t",col.names=NA)
Data <- read.delim(file="myfreq.txt", sep="\t",header=T,row.names = 1,quote=NULL)
Data

TEXT2 <- scan(file="03_CakeRecipe.txt", what="char", quote=NULL)
head(TEXT2)
TEXT2[TEXT2=="The"] <- "the"
TEXT2[TEXT2=="A"] <- "a"

table(TEXT2)
Freq.Data <- data.frame(table(TEXT2))
Freq.Data <- data.frame(row.names = Freq.Data$TEXT, Freq=Freq.Data$Freq,Rel.Freq=round(Freq.Data$Freq/sum(Freq.Data$Freq),3))
Freq.Data <- Freq.Data[order(Freq.Data$Freq,decreasing=T),]
write.table(Freq.Data, file="practiceFreq.txt", sep="\t", quote=F, col.names = NA)

head(Freq.Data[order(-rank(rownames(Freq.Data))),])
