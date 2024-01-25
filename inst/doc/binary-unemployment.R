## ----echo=FALSE,eval=FALSE--------------------------------
#  options(width=80)

## ----eval=FALSE-------------------------------------------
#  unemployment <- matrix(c(403, 238, 167, 175), nrow=2, ncol=2)
#  rownames(unemployment) <- c("male","female")
#  colnames(unemployment) <- c("<6 month",">6 month")
#  unemployment
#  rowSums(unemployment)

## ----eval=FALSE-------------------------------------------
#  ( odds_m <- 403/167 )
#  ( odds_w <- 238/175 )
#  ( log_odds_m <- log(403/167) )
#  ( log_odds_w <- log(238/175) )

## ----eval=FALSE-------------------------------------------
#  gender <- c(rep(1, 403+167), rep(0,238+175))
#  unemp <- c(rep(1, 403), rep(0, 167), rep(1, 238), rep(0, 175))

## ----eval=FALSE-------------------------------------------
#  table(gender, unemp)

## ----eval=FALSE-------------------------------------------
#  bin <- glm(unemp ~ gender, family=binomial)
#  summary(bin)
#  bin$coef
#  exp(bin$coef)

## ----eval=FALSE-------------------------------------------
#  gender_effect <- c(rep(1, 403+167), rep(-1,238+175))

## ----eval=FALSE-------------------------------------------
#  table(gender_effect, unemp)

## ----eval=FALSE-------------------------------------------
#  bin_effect <- glm(unemp ~ gender_effect, family=binomial)
#  summary(bin_effect)
#  bin_effect$coef
#  exp(bin_effect$coef)

## ----eval=FALSE-------------------------------------------
#  unemp_level <- matrix(c(202, 307, 87, 45,
#                          96, 162, 66, 18), nrow=4, ncol=2)
#  colnames(unemp_level) <- c("Short term","Long term")
#  unemp_level
#  rowSums(unemp_level)

## ----eval=FALSE-------------------------------------------
#  level <- factor(c(rep(1, 202+96), rep(2,307+162), rep(3,87+66), rep(4,45+18)))
#  unemp_l <-  c(rep(1, 202), rep(0, 96), rep(1, 307), rep(0, 162),
#              rep(1, 87), rep(0, 66), rep(1, 45), rep(0, 18))

## ----eval=FALSE-------------------------------------------
#  table(level, unemp_l)

## ----eval=FALSE-------------------------------------------
#  level <- relevel(level, ref=4)
#  bin_l <- glm(unemp_l ~ level, family=binomial)
#  summary(bin_l)

## ----results='markup',eval=FALSE--------------------------
#  library(qvcalc)
#  qv<-qvcalc(bin_l,"level")
#  summary(qv)
#  plot(qv)

## ----echo=FALSE,results='hide',eval=FALSE-----------------
#  rm(unemployment)

