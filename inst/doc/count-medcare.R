## ----results='hide',eval=TRUE-------------------------------------------------
library(catdata)
data(medcare)
attach(medcare)

## ----eval=TRUE----------------------------------------------------------------
med1=glm(ofp ~ hosp+healthpoor+healthexcellent+numchron+age+married+school,
         family=poisson,data=medcare[male==1 & ofp<=30,])
summary(med1)

## ----eval=TRUE----------------------------------------------------------------
med2=glm(ofp ~ hosp+healthpoor+healthexcellent+numchron+age+married+school,
         family=quasipoisson,data=medcare[male==1 & ofp<=30,])
summary(med2)

## ----eval=TRUE----------------------------------------------------------------
library(MASS)
med3=glm.nb(ofp ~ hosp+healthpoor+healthexcellent+numchron+age+married+school,
            data=medcare[male==1 & ofp<=30,])
summary(med3)

## ----eval=TRUE----------------------------------------------------------------

## ----results='hide',eval=TRUE-------------------------------------------------
library(pscl)

## ----eval=TRUE----------------------------------------------------------------
med4=zeroinfl(ofp ~ hosp+healthpoor+healthexcellent+numchron+age+married+school|1,
              data=medcare[male==1 & ofp<=30,])
summary(med4)

## ----eval=TRUE----------------------------------------------------------------
med5=zeroinfl(ofp ~ hosp+healthpoor+healthexcellent+numchron+age+married+school,
              data=medcare[male==1 & ofp<=30,])
summary(med5)

## ----eval=TRUE----------------------------------------------------------------
med6=hurdle(ofp ~ hosp+healthpoor+healthexcellent+numchron+age+married+school|1
            ,data=medcare[male==1 & ofp<=30,])
summary(med6)

## ----eval=TRUE----------------------------------------------------------------
med7=hurdle(ofp ~ hosp+healthpoor+healthexcellent+numchron+age+married+school,
            data=medcare[male==1 & ofp<=30,])
summary(med7)

