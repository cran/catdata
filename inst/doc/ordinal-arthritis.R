## ----echo=FALSE,eval=FALSE----------------------------------------------------
#  options(width=80)

## ----eval=FALSE---------------------------------------------------------------
#  arthritis <- data.frame(drug=c(rep("new agent", 24+37+21+19+6),
#  rep("active control", 11+51+22+21+7)),
#  assessment=c(rep(1,24), rep(2,37), rep(3,21), rep(4,19), rep(5,6), rep(1,11),
#  rep(2,51), rep(3,22), rep(4,21), rep(5,7)))

## ----eval=FALSE---------------------------------------------------------------
#  library(VGAM)

## ----eval=FALSE---------------------------------------------------------------
#  cumart <- vglm(assessment ~ drug, family=cumulative(parallel=TRUE, link="logit"),
#                data=arthritis)

## ----eval=FALSE---------------------------------------------------------------
#  summary(cumart)

## ----echo=FALSE,eval=FALSE----------------------------------------------------
#  detach(package:VGAM)

