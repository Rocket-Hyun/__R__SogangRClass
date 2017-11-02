total <- 0
for (num in 1:10)
{
  total <- total + num
  cat(num, '\t', total, '\n')
}

if(c(TRUE, FALSE)){
  cat('hi')
}


a<-c('cat','tiger','elephant')
for(word in a) {
  if(nchar(word) >3 & grepl('a', word)) {
    print(word)
    #cat(word)
  }else{
  }
}
