## ----echo=FALSE,eval=FALSE----------------------------------------------------
#  options(width=80)

## ----results='hide',eval=FALSE------------------------------------------------
#  library(catdata)
#  data(birth)
#  attach(birth)

## ----eval=FALSE---------------------------------------------------------------
#  intensive <- rep(0,length(Intensive))
#  intensive[Intensive>0] <- 1
#  Intensive <- intensive

## ----eval=FALSE---------------------------------------------------------------
#  previous <- Previous
#  previous[previous>1] <- 2
#  Previous <- previous

## ----eval=FALSE---------------------------------------------------------------
#  library(VGAM)

## ----eval=FALSE---------------------------------------------------------------
#  Birth <- as.data.frame(na.omit(cbind(Intensive, Cesarean, Sex, Weight, Previous,
#  AgeMother)))
#  detach(birth)

## ----eval=FALSE---------------------------------------------------------------
#  bivarlogit <- vglm(cbind(Intensive , Cesarean) ~ as.factor(Sex) + Weight +
#  as.factor(Previous) + AgeMother, binom2.or(zero=NULL), data=Birth)
#  
#  summary(bivarlogit)

## ----echo=FALSE,eval=FALSE----------------------------------------------------
#  detach(package:VGAM)

