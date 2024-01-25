## ----echo=FALSE,eval=FALSE----------------------------------------------------
#  options(width=80)

## ----results='hide',eval=FALSE------------------------------------------------
#  library(catdata)
#  data(knee)

## ----eval=FALSE---------------------------------------------------------------
#  knee <- reshape(knee, direction="long", varying=list(5:8), v.names="R",timevar="Time")
#  
#  knee$RD <- rep(0, length(knee$R))
#  knee$RD[knee$R>2] <- 1

## ----eval=FALSE---------------------------------------------------------------
#  knee$Age <- knee$Age - 30
#  knee$Age2 <- knee$Age^2

## ----eval=FALSE---------------------------------------------------------------
#  knee <- knee[knee$Time!=1,]

## ----eval=FALSE---------------------------------------------------------------
#  library(glmmML)

## ----eval=FALSE---------------------------------------------------------------
#  kneeGHQ <- glmmML(RD ~ as.factor(Th) + as.factor(Sex) + Age + Age2, data=knee,
#  family=binomial(), method="ghq", n.points=20, cluster=id)
#  summary(kneeGHQ)

## ----eval=FALSE---------------------------------------------------------------
#  kneePQL <- glmmPQL(RD ~ as.factor(Th) + as.factor(Sex) + Age + Age2, data=knee,
#  random = ~ 1|id, family=binomial())
#  summary(kneePQL)

## ----eval=FALSE---------------------------------------------------------------
#  library(gee)

## ----eval=FALSE---------------------------------------------------------------
#  knee <- knee[order(knee$id),]
#  kneeGEE <- gee(RD ~ as.factor(Th) + as.factor(Sex) + Age + Age2, data=knee,
#  family=binomial(), id=id, corstr="exchangeable")
#  summary(kneeGEE)

## ----echo=FALSE,eval=FALSE----------------------------------------------------
#  detach(package:gee)

