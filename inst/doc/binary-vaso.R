## ----results='hide',eval=TRUE-----------------------------
library(catdata)
data(vaso)
attach(vaso)

## ----eval=TRUE--------------------------------------------
y <- vaso$vaso
y[vaso$vaso==2] <- 0

## ----eval=TRUE--------------------------------------------
vaso1 <- glm(y ~ vol + rate, family=binomial)
summary(vaso1)

## ----eval=TRUE--------------------------------------------
vaso2 <- glm(y ~ I(exp(vol)) + I(exp(rate)), family=binomial)
summary(vaso2)

