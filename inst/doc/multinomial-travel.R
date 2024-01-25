## ----echo=FALSE,eval=FALSE----------------------------------------------------
#  options(width=80)

## ----eval=FALSE---------------------------------------------------------------
#  library(mlogit)

## ----eval=FALSE---------------------------------------------------------------
#  data(ModeChoice, package="Ecdat")

## ----eval=FALSE---------------------------------------------------------------
#  travel.long <- mlogit.data(ModeChoice, choice="mode", shape="long", alt.levels=
#  c("air","train","bus","car"))

## ----eval=FALSE---------------------------------------------------------------
#  travel.kat.id <- mlogit(mode ~ invt + gc|hinc, data=travel.long)
#  summary(travel.kat.id)

## ----eval=FALSE---------------------------------------------------------------
#  library(VGAM)

## ----eval=FALSE---------------------------------------------------------------
#  travelmode <- matrix(ModeChoice$mode, byrow = T, ncol = 4)
#  colnames(travelmode) <- c("air","train","bus","car")
#  travelhinc <- matrix(ModeChoice$hinc, byrow = T, ncol = 4)
#  travelhinc <- travelhinc[,1]
#  travelinvt <- matrix(ModeChoice$invt, byrow = T, ncol = 4)
#  colnames(travelinvt) <- c("invtair","invttrain","invtbus","invtcar")
#  travelgc <- matrix(ModeChoice$gc, byrow = T, ncol = 4)
#  colnames(travelgc) <- c("gcair","gctrain","gcbus","gccar")
#  
#  travelinvt <- sweep(travelinvt[,-1], 1, travelinvt[,1])
#  travelgc <- sweep(travelgc[,-1], 1, travelgc[,1])
#  
#  
#  Invt <- travelinvt[,1]
#  Gc <- travelgc[,1]
#  
#  traveldat <- cbind(travelhinc, travelinvt, Invt, travelgc, Gc)
#  traveldat <- as.data.frame(traveldat)

## ----eval=FALSE---------------------------------------------------------------
#  fit <- vglm(travelmode ~ Invt + Gc + travelhinc,
#              multinomial(parallel = FALSE ~ travelhinc, refLevel = 1),
#              xij = list(Invt ~ invttrain + invtbus + invtcar,
#                         Gc ~ gctrain + gcbus + gccar),
#              form2 = ~ Invt + invttrain + invtbus + invtcar +
#                        Gc + gctrain + gcbus + gccar + travelhinc,
#              data = traveldat, trace = TRUE)
#  
#  summary(fit)
#  summary(travel.kat.id)

## ----eval=FALSE---------------------------------------------------------------
#  summary(travel.kat.id)$CoefTable
#  summary(fit)@coef3

## ----echo=FALSE,results='hide',eval=FALSE-------------------------------------
#  detach(package:VGAM)
#  detach(package:mlogit)

