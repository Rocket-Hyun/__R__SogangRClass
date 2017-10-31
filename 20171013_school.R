TEXT <- scan(file="03_CakeRecipe.txt", what="char", quote=NULL)
TEXT <- gsub("^[[:punct:]]+|[[:punct:]]+$", "", TEXT)
TEXT <- tolower(TEXT)
TEXTtable <-sort(table(TEXT), decreasing=T)
TEXT.Freq <- data.frame(TEXTtable)
TEXT.Freq <- data.frame(row.names=TEXT.Freq$TEXT, Freq=TEXT.Freq$Freq)
head(TEXT.Freq)

