## ----echo=FALSE-------------------------------------------
options(width=60)

## ----results="hide",eval = TRUE---------------------------
library(catdata)
data(teratology)
data(teratology2)

## ----results="hide",eval = TRUE---------------------------
attach(teratology)

## ----eval = TRUE------------------------------------------
mLogit <- glm(cbind(D,L) ~ as.factor(Grp), family=binomial())
summary(mLogit)

## ----eval = TRUE------------------------------------------
mQuasi <- glm(cbind(D,L) ~ as.factor(Grp), family=quasibinomial(link="logit"))
summary(mQuasi)

## ----eval = TRUE------------------------------------------
library(gee)

## ----results="hide",eval = TRUE---------------------------
detach(teratology)
attach(teratology2)

## ----eval = TRUE------------------------------------------
mGee <- gee(y ~ as.factor(Grp), id=Rat, family=binomial)
summary(mGee) 

## ----eval = TRUE------------------------------------------
library(VGAM)

## ----results="hide",eval = TRUE---------------------------
detach(teratology2)
attach(teratology)

## ----eval = TRUE------------------------------------------
N <- D + L

## ----eval = TRUE------------------------------------------
mBetaBin <- vglm(cbind(D,L) ~ as.factor(Grp), family=betabinomial, subset=N>1)
summary(mBetaBin)

## ----results="hide",eval = TRUE---------------------------
detach(teratology)
attach(teratology2)

## ----eval = TRUE------------------------------------------
mMixPql<- glmmPQL(y ~ as.factor(Grp), random=~1 | Rat, family=binomial)
summary(mMixPql)

## ----eval = TRUE------------------------------------------
library(glmmML)

## ----eval = TRUE------------------------------------------
mGaussH <- glmmML(y ~ as.factor(Grp), cluster=Rat, method = "ghq", n.points = 14,
                  boot = 0) 
summary(mGaussH)

## ----results="hide",eval = TRUE---------------------------
detach(teratology2)
attach(teratology)

## ----eval = TRUE------------------------------------------
library(flexmix)

## ----results="hide",eval = TRUE---------------------------
detach(package:VGAM)
library(stats4)

## ----eval = TRUE------------------------------------------
mDiscmix <-stepFlexmix(cbind(D,L) ~ 1, k = 2, nrep=5,
                 model = FLXMRglmfix(family = "binomial",fixed =~as.factor(Grp)))
summary(mDiscmix)
parameters(mDiscmix)

