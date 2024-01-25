## ----echo=FALSE,eval=FALSE----------------------------------------------------
#  options(width=85)

## ----results='hide',eval=FALSE------------------------------------------------
#  library(catdata)
#  data(addiction)
#  attach(addiction)

## ----eval=FALSE---------------------------------------------------------------
#  library(nnet)

## ----eval=FALSE---------------------------------------------------------------
#  ill <- as.factor(ill)
#  addiction$ill<-as.factor(addiction$ill)

## ----eval=FALSE---------------------------------------------------------------
#  multinom0 <- multinom(ill ~ gender + age + university, data=addiction)
#  summary(multinom0)

## ----eval=FALSE---------------------------------------------------------------
#  library(VGAM)
#  multivgam0<-vglm(ill ~ gender + age + university, multinomial(refLevel=1),
#                   data=addiction)
#  summary(multivgam0)

## ----eval=FALSE---------------------------------------------------------------
#  addiction$age2 <- addiction$age^2
#  multinom1 <- update(multinom0, . ~ . + age2)
#  summary(multinom1)
#  
#  multivgam1<-vglm(ill ~ gender + age + university + age2, multinomial(refLevel=1),
#                   data=addiction)
#  summary(multivgam1)

## ----eval=FALSE---------------------------------------------------------------
#  anova(multinom0,multinom1)
#  multinom1$dev - multinom0$dev

## ----eval=FALSE---------------------------------------------------------------
#  minage <- min(na.omit(age))
#  maxage <- max(na.omit(age))
#  
#  ageindex <- seq(minage, maxage, 0.1)
#  n <- length(ageindex)

## ----eval=FALSE---------------------------------------------------------------
#  ageindex2 <- ageindex^2
#  
#  gender1 <- rep(1, n)
#  gender0 <- rep(0, n)
#  university1 <- rep(1, n)
#  
#  datamale <- as.data.frame(cbind(gender=gender0,age=ageindex,university=
#    university1,age2=ageindex2))
#  datafemale <- as.data.frame(cbind(gender=gender1,age=ageindex,university=
#    university1,age2=ageindex2))

## ----eval=FALSE---------------------------------------------------------------
#  probsmale <- predict(multinom1, datamale, type="probs")
#  probsfemale <- predict(multinom1, datafemale, type="probs")

## ----echo=TRUE,eval=FALSE-----------------------------------------------------
#  par(cex=1.4, lwd=2)
#  
#  plot(ageindex, probsmale[,1], type="l", lty=1, ylim=c(0,1), main=
#  "men with university degree", ylab="probabilities")
#  lines(ageindex, probsmale[,2], lty="dotted")
#  lines(ageindex, probsmale[,3], lty="dashed")
#  legend("topright", legend=c("Weak-willed", "diseased", "both"), lty=c("solid",
#  "dotted", "dashed"))

## ----echo=TRUE,eval=FALSE-----------------------------------------------------
#  par(cex=1.4, lwd=2)
#  
#  plot(ageindex, probsfemale[,1], type="l", lty=1, ylim=c(0,1), main=
#    "women with university degree", ylab="probabilities")
#  lines(ageindex, probsfemale[,2], lty="dotted")
#  lines(ageindex, probsfemale[,3], lty="dashed")
#  legend("topright", legend=c("Weak-willed", "diseased", "both"),
#         lty=c("solid", "dotted", "dashed"))

