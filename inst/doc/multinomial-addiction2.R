## ----echo=FALSE,eval=FALSE----------------------------------------------------
#  rm(list=ls(all=TRUE))
#  options(width=60)

## ----results='hide',eval=FALSE------------------------------------------------
#  library(catdata)
#  data(addiction)
#  attach(addiction)

## ----eval=FALSE---------------------------------------------------------------
#  ill01 <- ill
#  ill01[ill==0] <- 1
#  ill01[ill==2] <- 0
#  
#  age2 <- age^2

## ----eval=FALSE---------------------------------------------------------------
#  m01vs2 <- glm(ill01 ~ as.factor(gender) + as.factor(university) + age + age2,
#  family=binomial())
#  summary(m01vs2)

## ----results='hide',eval=FALSE------------------------------------------------
#  detach(addiction)
#  addiction2 <- addiction[addiction$ill!=2,]
#  attach(addiction2)
#  age2 <- age^2

## ----eval=FALSE---------------------------------------------------------------
#  m0vs1 <- glm(ill ~ as.factor(gender) + as.factor(university) + age + age2,
#  family=binomial())
#  summary(m0vs1)

