## ----echo=FALSE,eval=FALSE----------------------------------------------------
#  options(width=80)

## ----results='hide',eval=FALSE------------------------------------------------
#  rm(list=ls(all=TRUE))
#  library(catdata)
#  data(knee)
#  attach(knee)

## ----eval=FALSE---------------------------------------------------------------
#  suppressWarnings(chisq.test(knee$Th,knee$R4))

## ----eval=FALSE---------------------------------------------------------------
#  Age <- Age - 30
#  Age2 <- Age^2

## ----eval=FALSE---------------------------------------------------------------
#  R4 <- as.ordered(R4)
#  Th <- as.factor(Th)
#  Sex <- as.factor(Sex)

## ----eval=FALSE---------------------------------------------------------------
#  library(MASS)

## ----results='hide',eval=FALSE------------------------------------------------
#  polr1 <- polr(R4 ~ Th, method="logistic")

## ----eval=FALSE---------------------------------------------------------------
#  summary(polr1)

## ----eval=FALSE---------------------------------------------------------------
#  exp(-coef(polr1))

## ----results='hide',eval=FALSE------------------------------------------------
#  polr2 <- polr(R4 ~ Th + Sex + Age, method="logistic")

## ----eval=FALSE---------------------------------------------------------------
#  summary(polr2)

## ----eval=FALSE---------------------------------------------------------------
#  exp(-coef(polr2))

## ----eval=FALSE---------------------------------------------------------------
#  se <- summary(polr2)[1][[1]][1:3,2]
#  (wald2 <- -coef(polr2)/se)

## ----eval=FALSE---------------------------------------------------------------
#  1-pchisq(wald2^2, df=1)

## ----results='hide',eval=FALSE------------------------------------------------
#  polr3 <- update(polr2, ~. + Age2)

## ----eval=FALSE---------------------------------------------------------------
#  summary(polr3)

## ----eval=FALSE---------------------------------------------------------------
#  exp(-coef(polr3))

## ----eval=FALSE---------------------------------------------------------------
#  se <- summary(polr3)[1][[1]][1:4,2]
#  (wald3 <- -coef(polr3)/se)

## ----eval=FALSE---------------------------------------------------------------
#  1-pchisq(wald3^2, df=1)

## ----eval=FALSE---------------------------------------------------------------
#  library(VGAM)

## ----eval=FALSE---------------------------------------------------------------
#  m.vglm <- vglm(R4 ~ Th + Sex + Age + Age2, family = cumulative (link="logit",
#  parallel=TRUE))
#  summary(m.vglm)

## ----eval=FALSE---------------------------------------------------------------
#  library(rms)

## ----eval=FALSE---------------------------------------------------------------
#  m.lrm <- lrm(R4 ~ Th + Sex + Age + Age2)
#  m.lrm

## ----echo=FALSE,eval=FALSE----------------------------------------------------
#  detach(package:VGAM)

