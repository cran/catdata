## ----results='hide',eval=TRUE-------------------------------------------------
library(catdata)
data(encephalitis)
attach(encephalitis)

## ----eval=TRUE----------------------------------------------------------------
BAV <- country
BAV[BAV==2] <-0
TIME <- year

## ----eval=TRUE----------------------------------------------------------------
enc1 <- glm(count ~ TIME+I(TIME^2)+BAV+TIME*BAV, family = poisson)
summary(enc1)

## ----eval=TRUE----------------------------------------------------------------
enc2 <- glm(count ~ TIME+I(TIME^2)+BAV+TIME*BAV, family = gaussian("identity"))
summary(enc2)

## ----eval=TRUE----------------------------------------------------------------
enc3 <- glm(count ~ TIME+I(TIME^2)+BAV+TIME*BAV, family = gaussian("log"), 
            start=enc1$coef)
summary(enc3)

