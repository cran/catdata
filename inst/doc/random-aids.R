## ----echo=FALSE,eval=FALSE----------------------------------------------------
#  options(width=80)

## ----eval=FALSE---------------------------------------------------------------
#  library(catdata)
#  data(aids)

## ----eval=FALSE---------------------------------------------------------------
#  library(mgcv)

## ----eval=FALSE---------------------------------------------------------------
#  gammaids<-gamm(cd4 ~ s(time) + drugs + partners + s(cesd) + s(age),
#                 random=list(person=~1),  family=poisson(link=log), data=aids)

## ----eval=FALSE---------------------------------------------------------------
#  summary(gammaids$gam)

## ----fig.width=12, fig.height=9,eval=FALSE------------------------------------
#  plot(gammaids$gam,ylab=" ",cex.lab=1.8,cex.axis=1.5,select=1)

## ----fig.width=12, fig.height=9,eval=FALSE------------------------------------
#  plot(gammaids$gam,ylab=" ",cex.lab=1.8,cex.axis=1.5,select=2)

## ----fig.width=12, fig.height=9,eval=FALSE------------------------------------
#  plot(gammaids$gam,ylab=" ",cex.lab=1.8,cex.axis=1.5,select=3)

## ----echo=FALSE,results='hide',eval=FALSE-------------------------------------
#  detach(package:mgcv)

