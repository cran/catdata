## ----results='hide',eval=FALSE------------------------------------------------
#  library(catdata)
#  data(dust)
#  attach(dust)

## ----eval=FALSE---------------------------------------------------------------
#  dustlogitnon1=glm(bronch ~ dust+years, family=binomial, data=dust[(dust$smoke==0),])
#  summary(dustlogitnon1)

## ----eval=FALSE---------------------------------------------------------------
#  dustlogitnon2 <- glm(bronch ~ dust+years, family=binomial,
#                       data=dust[(dust$smoke==0)&(dust$dust<10),])
#  summary(dustlogitnon2)

## ----eval=FALSE---------------------------------------------------------------
#  dustlogit1 <- glm(bronch ~ dust+years+smoke, family=binomial, data=dust)
#  summary(dustlogit1)

## ----eval=FALSE---------------------------------------------------------------
#  dustlogit2 <- glm(bronch ~ dust+years+smoke, family=binomial,
#                    data=dust[(dust$dust<20),])
#  summary(dustlogit2)

