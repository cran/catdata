## ----echo=FALSE,eval=FALSE----------------------------------------------------
#  options(width=80)
#  rm(list=ls(all=TRUE))

## ----results='hide',eval=FALSE------------------------------------------------
#  library(catdata)
#  data(knee)
#  attach(knee)

## ----eval=FALSE---------------------------------------------------------------
#  Age <- Age - 30
#  Age2 <- Age^2

## ----eval=FALSE---------------------------------------------------------------
#  k <- length(unique(R4))
#  R4rev <- k + 1 - R4

## ----eval=FALSE---------------------------------------------------------------
#  R4 <- as.ordered(R4)
#  R4rev <- as.ordered(R4rev)
#  Th <- as.factor(Th)
#  Sex <- as.factor(Sex)

## ----eval=FALSE---------------------------------------------------------------
#  library(VGAM)

## ----eval=FALSE---------------------------------------------------------------
#  clogit <- vglm(R4 ~ Th + Sex + Age +Age2, family = cumulative (link="logit",
#  parallel=TRUE))

## ----eval=FALSE---------------------------------------------------------------
#  cprobit <- vglm(R4 ~ Th + Sex + Age +Age2, family = cumulative (link="probit",
#  parallel=TRUE))

## ----eval=FALSE---------------------------------------------------------------
#  cgumbel <- vglm(R4rev ~ Th + Sex + Age +Age2, family = cumulative(link="cloglog",
#  parallel=TRUE))

## ----eval=FALSE---------------------------------------------------------------
#  cgompertz <- vglm(R4 ~ Th + Sex + Age +Age2, family = cumulative(link="cloglog",
#  parallel=TRUE))

## ----eval=FALSE---------------------------------------------------------------
#  deviance(clogit)
#  deviance(cprobit)
#  deviance(cgumbel)
#  deviance(cgompertz)

## ----eval=FALSE---------------------------------------------------------------
#  slogit <- vglm(R4 ~ Th + Sex + Age +Age2, family = sratio (link="logit",
#  parallel=TRUE))

## ----eval=FALSE---------------------------------------------------------------
#  sprobit <- vglm(R4 ~ Th + Sex + Age +Age2, family = sratio (link="probit",
#  parallel=TRUE))

## ----eval=FALSE---------------------------------------------------------------
#  sgumbel <- vglm(R4rev ~ Th + Sex + Age +Age2, family = sratio (link="cloglog",
#  parallel=TRUE))

## ----eval=FALSE---------------------------------------------------------------
#  sgompertz <- vglm(R4 ~ Th + Sex + Age +Age2, family = sratio (link="cloglog",
#  parallel=TRUE))

## ----eval=FALSE---------------------------------------------------------------
#  deviance(slogit)
#  deviance(sprobit)
#  deviance(sgumbel)
#  deviance(sgompertz)

## ----echo=FALSE,eval=FALSE----------------------------------------------------
#  detach(package:VGAM)

