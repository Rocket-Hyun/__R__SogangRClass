TEXT <- scan(file="03_WhatIsR.txt", what="char", quote=NULL)
bi.gram <- paste(TEXT[1:length(TEXT)-1], TEXT[2:length(TEXT)], sep=" ")
cat(bi.gram, file="myFirstBigram.txt", sep="\n")
