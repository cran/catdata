## ----echo=FALSE,eval=FALSE----------------------------------------------------
#  options(width=60)

## ----results='hide',eval=FALSE------------------------------------------------
#  library(catdata)
#  data(unemployment)
#  attach(unemployment)

## ----eval=FALSE---------------------------------------------------------------
#  durbin <- as.factor(durbin)
#  table.durbin <- ftable(subset(unemployment, select=c("age", "durbin")),
#  col.vars="durbin")
#  rels<-table.durbin[,1]/rowSums(table.durbin)
#  age.new <- min(age):max(age)
#  
#  model1 <- glm(table.durbin ~ age.new, family=binomial)
#  summary(model1)

## ----eval=FALSE---------------------------------------------------------------
#  plot(age.new, model1$fitted.values, xlab="Age", ylab="Observed/Fitted values",
#  type="l", ylim=c(0,1))
#  points(age.new,table.durbin[,1]/rowSums(table.durbin))

## ----eval=FALSE---------------------------------------------------------------
#  plot(model1$fitted.values,sqrt(rowSums(table.durbin))*rstandard(model1),
#  xlab="Predicted values", ylab="Residuals")

## ----eval=FALSE---------------------------------------------------------------
#  qqnorm(sqrt(rowSums(table.durbin))*rstandard(model1), main="",
#         ylab="Standardized deviance residuals")
#  qqline(sqrt(rowSums(table.durbin))*rstandard(model1), lwd=2.5,
#         lty="dashed", col="red")

