  Ab<-c(74,14,50,275)
  names(Ab)<-c('year of birth', 'day of birth', 'age', 'last three numbers of id')
  # part 1
  #a length of the vector
  length(Ab)
  # b vectoor data type
  class(Ab)
  #c mutiplication of index 2
  Ab[2]*3
  #d minimum value in the vector
  min(Ab)
  
  # part 2
  # N of llast three numeber of my id
  N<-Ab[c('last three numbers of id')]
  print(N%%50)
  
  # part 3
  # rnorm function
  # the first and the second argumente is import becose with this with this argumets we declare random range number and moisture
  MyNorm <- rnorm(n = 50, mean = Ab[c('age')], sd = 5)
  hist(MyNorm)
  
  #What are the odds that someone will be 40 years old or younger
  odds_40_or_younger <- ifelse(Ab <= 40, T, F)
    print(odds_40_or_younger)