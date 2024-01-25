## ----echo=FALSE,eval=FALSE----------------------------------------------------
#  options(width=80)

## ----results='hide',eval=FALSE------------------------------------------------
#  library(catdata)
#  data(kneesequential)
#  data(kneecumulative)

## ----eval=FALSE---------------------------------------------------------------
#  kneesequential$Age <- kneesequential$Age - 30
#  kneesequential$Age2 <- kneesequential$Age^2
#  
#  kneecumulative$Age <- kneecumulative$Age - 30
#  kneecumulative$Age2<-kneecumulative$Age^2

## ----eval=FALSE---------------------------------------------------------------
#  library(lme4)

## ----eval=FALSE---------------------------------------------------------------
#  seqGH<-glmer(y~-1+Icept1+Icept2+Icept3+Icept4+Th+Age+Age2+(1|Person),
#               family=binomial(link=logit),data=kneesequential, nAGQ = 25)
#  summary(seqGH)

## ----eval=FALSE---------------------------------------------------------------
#  library(MASS)

## ----eval=FALSE---------------------------------------------------------------
#  seqPQL<-glmmPQL(y ~-1+Icept1+Icept2+Icept3+Icept4+Th+Age+Age2,
#  random=list(Person=~1), family=binomial(link=logit), data=kneesequential, niter=30)
#  summary(seqPQL)

## ----eval=FALSE---------------------------------------------------------------
#  library(ordinal)

## ----eval=FALSE---------------------------------------------------------------
#  cumGH<-clmm2(as.factor(y)~1+Th+Age+Age2, random = as.factor(Person), data =
#  kneecumulative, link = "logistic",nAGQ=25,start=c(-5,-3,3,5,rep(0.001,4)),Hess=TRUE)
#  summary(cumGH)

## ----eval=FALSE---------------------------------------------------------------
#  cumLP<-clmm2(as.factor(y)~1+Th+Age+Age2, random = as.factor(Person), data =
#  kneecumulative, link = "logistic",start=c(-5,-3,3,5,rep(0.001,4)), Hess = TRUE)
#  summary(cumLP)

## ----echo=FALSE,eval=FALSE----------------------------------------------------
#  detach(package:ordinal)

## ----echo=FALSE,eval=FALSE----------------------------------------------------
#  detach(package:lme4)

