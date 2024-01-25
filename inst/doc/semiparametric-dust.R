## ----echo=FALSE,eval=FALSE----------------------------------------------------
#  options(width=80)

## ----eval=FALSE---------------------------------------------------------------
#  library(mgcv)
#  library(catdata)
#  data(dust)

## ----eval=FALSE---------------------------------------------------------------
#  gamdust1 <- gam(bronch ~ s(dust,years), family=binomial,
#                  data=dust[(dust$dust<10) & (dust$smoke==1),])
#  
#  plot(gamdust1, pers=TRUE)

## ----eval=FALSE---------------------------------------------------------------
#  gamdust2<- gam(bronch ~ s(dust) + s(years), family=binomial,
#                 data=dust[(dust$dust<10) & (dust$smoke==1),])

## ----fig.width=8,eval=FALSE---------------------------------------------------
#  plot(gamdust2, select=1)

## ----fig.width=8,eval=FALSE---------------------------------------------------
#  plot(gamdust2, select=2)

