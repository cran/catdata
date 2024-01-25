## ----echo=FALSE,eval=TRUE-----------------------------------------------------
options(width=80)

## ----results='hide',eval=TRUE-------------------------------------------------
library(catdata)
data(children)
attach(children)

## ----eval=TRUE----------------------------------------------------------------
pois <- glm(child ~ age+I(age^2)+I(age^3)+I(age^4)+dur+I(dur^2)+nation+god+univ, 
            data = children,  family = poisson(link=log))
summary(pois)

## ----eval=TRUE----------------------------------------------------------------
x <- min(age):max(age)
y <- exp(pois$coef[1]+pois$coef["age"]*x+pois$coef["I(age^2)"]*x^2+
  pois$coef["I(age^3)"]*x^3+pois$coef["I(age^4)"]*x^4+pois$coef["dur"]*10+
  pois$coef["I(dur^2)"]*100)
par(cex=1.4)
plot(x, y, ylab="Number of Children", xlab="Age")

## ----eval=TRUE----------------------------------------------------------------
y <- (pois$coef[1]+pois$coef["age"]*x+pois$coef["I(age^2)"]*x^2+
  pois$coef["I(age^3)"]*x^3+pois$coef["I(age^4)"]*x^4+pois$coef["dur"]*10+
  pois$coef["I(dur^2)"]*100)
par(cex=1.4)
plot(x, y, ylab="Linear Predictor", xlab="Age")

## ----eval=TRUE----------------------------------------------------------------
x <- min(dur):max(dur)
y <- exp(pois$coef[1]+pois$coef["age"]*40+pois$coef["I(age^2)"]*40^2+
  pois$coef["I(age^3)"]*40^3+pois$coef["I(age^4)"]*40^4+pois$coef["dur"]*x+
  pois$coef["I(dur^2)"]*x^2)
par(cex=1.4)
plot(x, y, ylab="Number of Children", xlab="Duration of School Education")

## ----eval=TRUE----------------------------------------------------------------
y <- (pois$coef[1]+pois$coef["age"]*40+pois$coef["I(age^2)"]*40^2+
  pois$coef["I(age^3)"]*40^3+pois$coef["I(age^4)"]*40^4+pois$coef["dur"]*x+
  pois$coef["I(dur^2)"]*x^2)
par(cex=1.4)
plot(x, y, ylab="Linear Predictor", xlab="Duration of School Education")

## ----eval=TRUE----------------------------------------------------------------
anova(pois)

