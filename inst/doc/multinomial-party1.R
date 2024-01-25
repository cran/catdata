## ----echo=FALSE,eval=FALSE----------------------------------------------------
#  options(width=60)

## ----eval=FALSE---------------------------------------------------------------
#  partypref <- matrix(data=c(114, 10, 53,224,134,9,42,226,114,8,23,174,339,30,13,
#  414,42,5,44,161,88,10, 60,171,90,8,31,168,413,23,14,375), nrow=8, byrow=TRUE)
#  
#  
#  partydat<-data.frame(
#  party=c(rep("CDU",sum(partypref[,1])),rep("SPD",sum(partypref[,4])),
#  rep("The Liberals",sum(partypref[,2])),rep("The Greens",sum(partypref[,3]))),
#  sex=c(rep(0,sum(partypref[1:4,1])),rep(1,sum(partypref[5:8,1])),
#  rep(0,sum(partypref[1:4,4])),rep(1,sum(partypref[5:8,4])),
#  rep(0,sum(partypref[1:4,2])),rep(1,sum(partypref[5:8,2])),
#  rep(0,sum(partypref[1:4,3])),rep(1,sum(partypref[5:8,3]))),
#  age=c(rep(c(1:4,1:4), partypref[,1]),rep(c(1:4,1:4), partypref[,4]),
#  rep(c(1:4,1:4), partypref[,2]),rep(c(1:4,1:4), partypref[,3])))
#  

## ----eval=FALSE---------------------------------------------------------------
#  library(nnet)

## ----eval=FALSE---------------------------------------------------------------
#  datmat<-as.matrix(table(partydat$sex,partydat$party))
#  tparty<-data.frame("CDU"=datmat[,1],"SPD"=datmat[,2],"Green"=datmat[,3],
#  "Liberals"=datmat[,4],"sex"=0:1)
#  tparty
#  
#  logitParty <- multinom(cbind(CDU,SPD,Green,Liberals)~sex, data=tparty)
#  
#  summary(logitParty)
#  exp(coef(logitParty))

## ----eval=FALSE---------------------------------------------------------------
#  coefSPD <- matrix(data = c(-coefficients(logitParty)[3,1],
#  coefficients(logitParty)[1,1] - coefficients(logitParty)[3,1],
#  coefficients(logitParty)[2,1] - coefficients(logitParty)[3,1],
#  -coefficients(logitParty)[3,2],
#  coefficients(logitParty)[1,2] - coefficients(logitParty)[3,2],
#  coefficients(logitParty)[2,2] - coefficients(logitParty)[3,2]),
#  nrow=3, ncol=2)
#  
#  coefSPD
#  
#  exp(coefSPD)

