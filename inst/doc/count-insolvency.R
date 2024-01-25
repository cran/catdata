## ----results='hide',eval=TRUE-------------------------------------------------
library(catdata)
data(insolvency)
attach(insolvency)

## ----eval=TRUE----------------------------------------------------------------
ins1 <- glm(insolv ~ case + I(case^2), family=poisson(link=log), data=insolvency)
summary(ins1)
# plot(ins1)

## ----eval=TRUE----------------------------------------------------------------
plot(case, insolv)
points(ins1$fitted.values, type="l")

## ----eval=TRUE----------------------------------------------------------------
ins2 <- glm(insolv ~ case + I(case^2), family=quasipoisson, data=insolvency)
summary(ins2)
# plot(ins2)

## ----eval=TRUE----------------------------------------------------------------
library(MASS)
ins3 <- glm.nb(insolv ~ case + I(case^2),data=insolvency)
summary(ins3)

## ----eval=TRUE----------------------------------------------------------------
ins4 <- glm(insolv ~ case + I(case^2), family=gaussian(link=log), data=insolvency)
summary(ins4)

