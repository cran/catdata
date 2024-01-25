## ----echo=FALSE,eval=FALSE----------------------------------------------------
#  options(width=80)

## ----eval=FALSE---------------------------------------------------------------
#  library(catdata)
#  data(children)

## ----eval=FALSE---------------------------------------------------------------
#  library(mgcv)

## ----eval=FALSE---------------------------------------------------------------
#  gamchild <- gam(child ~ s(age) + s(dur) + as.factor(nation) + as.factor(god) +
#    as.factor(univ), data=children, family=poisson(link=log))
#  
#  summary(gamchild)

## ----fig.width=9,eval=FALSE---------------------------------------------------
#  par(cex=1.5)
#  plot(gamchild, select=1, ylab="", xlab="Age")

## ----fig.width=9,eval=FALSE---------------------------------------------------
#  par(cex=1.5)
#  plot(gamchild, select=2, ylab="", xlab="Duration")

