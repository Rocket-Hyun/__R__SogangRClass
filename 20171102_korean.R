TEXT <- scan(file="05_Sejong_UTF-8.txt", what="char", quote=NULL, sep="\n", encoding="UTF-8")
head(TEXT,50)
tail(TEXT,50)
Body <- grep("^9BT", TEXT, value=T)
head(Body, 10)
Body.split <- unlist(strsplit(Body, "\t"))
head(Body.split, 12)
Mors <- Body.split[seq(3, length(Body.split), 3)]
head(Mors)
Mors.split <- unlist(strsplit(Mors, " [+] "))
head(Mors.split)
head(sort(table(Mors.split), decreasing=T),30)
NNG <- Mors.split[grep("/NNG",Mors.split)]
head(NNG)