## ----echo=FALSE,eval=FALSE----------------------------------------------------
#  options(width=80)

## ----results='hide',eval=FALSE------------------------------------------------
#  library(catdata)
#  data(addiction)
#  attach(addiction)

## ----eval=FALSE---------------------------------------------------------------
#  library(mgcv)

## ----eval=FALSE---------------------------------------------------------------
#  minage <- min(na.omit(age))
#  maxage <- max(na.omit(age))
#  ageindex <- seq(minage, maxage, 0.1)
#  n <- length(ageindex)

## ----eval=FALSE---------------------------------------------------------------
#  gender1 <- rep(1, n)
#  gender0 <- rep(0, n)
#  university1 <- rep(1, n)
#  university0 <- rep(0, n)
#  
#  datamale <- as.data.frame(cbind(gender=gender0,age=ageindex,university=university1))
#  datafemale <- as.data.frame(cbind(gender=gender1,age=ageindex,
#                                    university=university1))

## ----eval=FALSE---------------------------------------------------------------
#  ill01 <-ill
#  ill01[ill==1] <- 0
#  ill01[ill==2] <- 1

## ----eval=FALSE---------------------------------------------------------------
#  gam1 <- gam(as.factor(ill01) ~ s(age) + gender + university, family=binomial())
#  gam2 <- gam(as.factor(ill) ~ s(age) + gender + university, family=binomial(),
#              data=addiction[addiction$ill!=2,])

## ----eval=FALSE---------------------------------------------------------------
#  summary(gam1)
#  summary(gam2)

## ----fig.width=9,eval=FALSE---------------------------------------------------
#  plot(gam1)

## ----fig.width=9,eval=FALSE---------------------------------------------------
#  plot(gam2)

## ----eval=FALSE---------------------------------------------------------------
#  predmale1 <- predict(gam1, newdata=datamale, type="response")
#  predmale2 <- predict(gam2, newdata=datamale, type="response")

## ----eval=FALSE---------------------------------------------------------------
#  predfemale1 <- predict(gam1, newdata=datafemale, type="response")
#  predfemale2 <- predict(gam2, newdata=datafemale, type="response")

## ----eval=FALSE---------------------------------------------------------------
#  p2 <- predmale1
#  p1 <- predmale2 * (1-predmale1)
#  p0 <- (1-predmale2) * (1-predmale1)

## ----eval=FALSE---------------------------------------------------------------
#  pf2 <- predfemale1
#  pf1 <- predfemale2 * (1-predfemale1)
#  pf0 <- (1-predfemale2) * (1-predfemale1)

## ----fig.width=16, fig.height=8.5,eval=FALSE----------------------------------
#  par(mfrow=c(1,2), cex=1.8)
#  plot(ageindex, p0, type="l", lty=1, ylim=c(0,1), main="men with university degree",
#       ylab="probabilities")
#  lines(ageindex, p1, lty="dotted")
#  lines(ageindex, p2, lty="dashed")
#  legend("topright", legend=c("Weak-willed", "diseased", "both"),
#         lty=c("solid", "dotted", "dashed"))
#  
#  
#  plot(ageindex, pf0, type="l", lty=1, ylim=c(0,1),
#       main="women with university degree", ylab="probabilities")
#  lines(ageindex, pf1, lty="dotted")
#  lines(ageindex, pf2, lty="dashed")
#  legend("topright", legend=c("Weak-willed", "diseased", "both"),
#         lty=c("solid", "dotted", "dashed"))

## ----eval=FALSE---------------------------------------------------------------
#  gam3 <- gam(as.factor(ill)~ s(age) + gender + university,
#              data=addiction[addiction$ill!=2,], family=binomial())
#  gam4 <- gam(as.factor(ill)~ s(age) + gender + university,
#              data=addiction[addiction$ill!=1,], family=binomial())

## ----eval=FALSE---------------------------------------------------------------
#  summary(gam3)
#  summary(gam4)

