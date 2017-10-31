install.packages('wordcloud')
library(wordcloud)    
wordcloud(rownames(TEXT.Freq),
          TEXT.Freq$Freq,
          #최소 글자 폰트 최대 글자 폰트
          scale=c(3, 0.8), 
          #최소 빈도 몇 이상만
          min.freq=2,
          #최대 몇개의 단어만
          max.words=90,
          #순서
          random.order=F,
          #세로로 출력되는 글자의 비율 40%
          rot.per = 0.4,
          #색상표 총 8가지 색상
          colors=brewer.pal(8,"Dark2"))