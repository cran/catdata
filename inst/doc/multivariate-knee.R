## ----echo=FALSE,eval=FALSE----------------------------------------------------
#  options(width=80)

## ----results='hide',eval=FALSE------------------------------------------------
#  library(catdata)
#  data(knee)
#  attach(knee)

## ----eval=FALSE---------------------------------------------------------------
#  R2D <- rep(0, length(R2))
#  R3D <- rep(0, length(R3))
#  R4D <- rep(0, length(R3))
#  
#  R2D[R2>2] <- 1
#  R3D[R3>2] <- 1
#  R4D[R4>2] <- 1

## ----eval=FALSE---------------------------------------------------------------
#  N <- rep(knee$N, each=3)
#  Th <- rep(knee$Th, each=3)
#  Age <- rep(knee$Age, each=3)
#  Sex <- rep(knee$Sex, each=3)

## ----eval=FALSE---------------------------------------------------------------
#  Response <- c(rbind(R2D,R3D,R4D))
#  Age2 <- Age^2

## ----eval=FALSE---------------------------------------------------------------
#  Th <- as.factor(Th)
#  Sex <- as.factor(Sex)

## ----eval=FALSE---------------------------------------------------------------
#  library(gee)

## ----results='hide',eval=FALSE------------------------------------------------
#  gee1a <- gee(Response ~ Th + Sex + Age + Age2, id=N,
#  family=binomial(link=logit))

## ----eval=FALSE---------------------------------------------------------------
#  summary(gee1a)

## ----results='hide',eval=FALSE------------------------------------------------
#  gee2a <- gee(Response ~ Th + Sex + Age + Age2, id=N,
#  family=binomial(link=logit), corstr="exchangeable")

## ----eval=FALSE---------------------------------------------------------------
#  summary(gee2a)

## ----results='hide',eval=FALSE------------------------------------------------
#  gee3a <- gee(Response ~ Th + Sex + Age + Age2, id=N,
#  family=binomial(link=logit), corstr="AR-M", Mv=1)

## ----eval=FALSE---------------------------------------------------------------
#  summary(gee3a)

## ----eval=FALSE---------------------------------------------------------------
#  library(geepack)

## ----results='hide',eval=FALSE------------------------------------------------
#  gee1b <- geeglm(Response ~ Th + Sex + Age + Age2, id=N,
#  family=binomial(link=logit))

## ----eval=FALSE---------------------------------------------------------------
#  summary(gee1b)

## ----results='hide',eval=FALSE------------------------------------------------
#  gee2b <- geeglm(Response ~ Th + Sex + Age + Age2, id=N,
#  family=binomial(link=logit), corstr="exchangeable")

## ----eval=FALSE---------------------------------------------------------------
#  summary(gee2b)

## ----results='hide',eval=FALSE------------------------------------------------
#  gee3b <- geeglm(Response ~ Th + Sex + Age + Age2, id=N,
#  family=binomial(link=logit), corstr="ar1")

## ----eval=FALSE---------------------------------------------------------------
#  summary(gee3b)

## ----eval=FALSE---------------------------------------------------------------
#  glm1 <- glm(Response ~ Th + Sex + Age + Age2,
#  family=binomial(link=logit))
#  summary(glm1)

## ----eval=FALSE---------------------------------------------------------------
#  Age <- Age-30
#  Age2 <- Age^2

## ----results='hide',eval=FALSE------------------------------------------------
#  gee1c <- gee(Response ~ Th + Sex + Age + Age2, id=N,
#  family=binomial(link=logit))

## ----eval=FALSE---------------------------------------------------------------
#  summary(gee1c)

## ----results='hide',eval=FALSE------------------------------------------------
#  gee2c <- gee(Response ~ Th + Sex + Age + Age2, id=N,
#  family=binomial(link=logit), corstr="exchangeable")

## ----eval=FALSE---------------------------------------------------------------
#  summary(gee2c)

## ----results='hide',eval=FALSE------------------------------------------------
#  gee3c <- gee(Response ~ Th + Sex + Age + Age2, id=N,
#  family=binomial(link=logit), corstr="AR-M", Mv=1)

## ----eval=FALSE---------------------------------------------------------------
#  summary(gee3c)

