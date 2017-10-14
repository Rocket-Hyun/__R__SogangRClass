a <- c("홍길동","홍길순","홍길자")
sex <- c("M","F","F")
grade <- c("A","B","C")
DATA1 <- data.frame(row.names=a,성별=sex,학점=grade)
DATA1
DATA1[order(DATA1$성별,rownames(DATA1),decreasing=T), ]
DATA1[order(-rank(DATA1$성별),-rank(rownames(DATA1))),]
