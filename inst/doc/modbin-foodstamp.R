## ----results='hide',eval=FALSE------------------------------------------------
#  library(catdata)
#  data(foodstamp)
#  attach(foodstamp)

## ----eval=FALSE---------------------------------------------------------------
#  food1 <- glm(y ~ TEN + SUP + INC, family=binomial, data=foodstamp)
#  summary(food1)

## ----eval=FALSE---------------------------------------------------------------
#  plot(food1,2)

