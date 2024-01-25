## ----echo=FALSE,eval=FALSE----------------------------------------------------
#  options(width=60)

## ----eval=FALSE---------------------------------------------------------------
#  library(catdata)
#  data(leukoplakia)
#  library(vcdExtra)
#  leukoplakia<-expand.dft(leukoplakia,freq="Freq")

## ----eval=FALSE---------------------------------------------------------------
#  mosaicplot(~ Leukoplakia+Smoker+Alcohol,main ="", data = leukoplakia,
#             color = TRUE, cex.axis=1.0)

## ----eval=FALSE---------------------------------------------------------------
#  mosaicplot(~ Leukoplakia+Smoker,main ="", data = leukoplakia, color = TRUE,
#             cex.axis=1.0)

## ----echo=FALSE,eval=FALSE----------------------------------------------------
#  detach(package:vcdExtra)
#  detach(package:gnm)

