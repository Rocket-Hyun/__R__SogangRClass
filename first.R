a <- c("Junghyun", "Dadu", "Gons", "Jungz")
englishScore <- c(100,90,100,80)
mathScore <- c(60,80,40,100)
DATA <- data.frame(row.names = a, English=englishScore, Math=mathScore)
DATA <- data.frame(DATA, Mean=(englishScore+mathScore)/2, Sum=englishScore+mathScore)
DATA
DATA[order(row.names(DATA),decreasing = T),]
DATA[order(-rank(rownames(DATA))), ]

nrow(DATA)
length(DATA)
dim(DATA)
attributes(DATA)
x <- c("a","c","b")
names(x) <- c(1,2,3)
x
attributes(x)
attributes(table(unname(x)))
attributes(DATA)
attributes(DATA)$row.names
