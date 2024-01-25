## ----echo=FALSE,eval=FALSE----------------------------------------------------
#  options(width=80)

## ----eval=FALSE---------------------------------------------------------------
#  library(catdata)
#  data(knee)

## ----eval=FALSE---------------------------------------------------------------
#  knee <- reshape(knee, direction="long", varying=list(5:8), v.names="R",
#                  timevar="Time")
#  
#  knee$RD <- rep(0, length(knee$R))
#  knee$RD[knee$R>2] <- 1
#  
#  knee$Age <- knee$Age - 30
#  knee$Age2<-knee$Age^2

## ----eval=FALSE---------------------------------------------------------------
#  knee$Th <- as.factor(knee$Th)
#  knee$Sex <- as.factor(knee$Sex)

## ----eval=FALSE---------------------------------------------------------------
#  library(flexmix)

## ----eval=FALSE---------------------------------------------------------------
#  kneeflex2 <-stepFlexmix(cbind(RD,1-RD) ~ 1 | N,	model = FLXMRglmfix(family =
#    "binomial", fixed= ~ Th + Sex + Age + Age2), k = 2, nrep = 5, data = knee)
#  
#  kneeflex3 <-stepFlexmix(cbind(RD,1-RD) ~ 1 | N,	model = FLXMRglmfix(family =
#    "binomial", fixed= ~ Th + Sex + Age + Age2), k = 3, nrep = 5, data = knee)
#  
#  kneeflex4 <-stepFlexmix(cbind(RD,1-RD) ~ 1 | N,	model = FLXMRglmfix(family =
#    "binomial", fixed= ~ Th + Sex + Age + Age2), k = 4, nrep = 5, data = knee)

## ----eval=FALSE---------------------------------------------------------------
#  summary(kneeflex2)@BIC
#  summary(kneeflex3)@BIC
#  summary(kneeflex4)@BIC

## ----eval=FALSE---------------------------------------------------------------
#  summary(refit(kneeflex2))

## ----echo=FALSE,eval=FALSE----------------------------------------------------
#  detach(package:flexmix)

