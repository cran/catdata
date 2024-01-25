## ----echo=FALSE,eval=FALSE----------------------------------------------------
#  options(width=80)

## ----eval=FALSE---------------------------------------------------------------
#  library(flexmix)
#  data(betablocker)

## ----eval=FALSE---------------------------------------------------------------
#  betablocker$Treatment <- as.factor(betablocker$Treatment)

## ----eval=FALSE---------------------------------------------------------------
#  GlmT <- glm(cbind(Deaths, Total	- Deaths) ~ Treatment, family = "binomial",
#  data = betablocker)
#  summary(GlmT)

## ----eval=FALSE---------------------------------------------------------------
#  GlmTC <- glm(cbind(Deaths, Total - Deaths) ~ Treatment + as.factor(Center),
#               family 	= "binomial", data = betablocker)
#  summary(GlmTC)

## ----eval=FALSE---------------------------------------------------------------
#  library(glmmML)

## ----eval=FALSE---------------------------------------------------------------
#  MixedGH4 <- glmmML(cbind(Deaths, Total - Deaths) ~ Treatment, cluster=Center,
#                     method = c("ghq"), n.points = 4, boot = 0, data=betablocker)
#  
#  summary(MixedGH4)

## ----eval=FALSE---------------------------------------------------------------
#  MixedGH20 <- glmmML(cbind(Deaths, Total - Deaths) ~ Treatment, cluster=Center,
#                      method = c("ghq"), n.points = 20, boot = 0, data=betablocker)
#  
#  summary(MixedGH20)

## ----eval=FALSE---------------------------------------------------------------
#  set.seed(5)

## ----results='hide',eval=FALSE------------------------------------------------
#  detach(package:glmmML)

## ----eval=FALSE---------------------------------------------------------------
#  MixFix3 <-stepFlexmix(cbind(Deaths, Total - Deaths) ~ 1 | Center,	model =
#    FLXMRglmfix(family = "binomial", fixed = ~ Treatment), k = 3, nrep = 5,
#                        data = betablocker)

## ----eval=FALSE---------------------------------------------------------------
#  MixFix3

## ----eval=FALSE---------------------------------------------------------------
#  parameters(MixFix3)

## ----results='hide',eval=FALSE------------------------------------------------
#  library(flexmix)

## ----eval=FALSE---------------------------------------------------------------
#  summary(MixFix3)
#  summary(refit(MixFix3))

## ----eval=FALSE---------------------------------------------------------------
#  set.seed(5)

## ----eval=FALSE---------------------------------------------------------------
#  MixFix4 <-stepFlexmix(cbind(Deaths, Total - Deaths) ~ 1 | Center, model =
#    FLXMRglmfix(family = "binomial", fixed = ~ Treatment), k = 4, nrep = 5,
#                        data = betablocker)

## ----eval=FALSE---------------------------------------------------------------
#  MixFix4

## ----eval=FALSE---------------------------------------------------------------
#  parameters(MixFix4)

## ----eval=FALSE---------------------------------------------------------------
#  summary(MixFix4)
#  summary(refit(MixFix4))

## ----echo=FALSE,results='hide',eval=FALSE-------------------------------------
#  detach(package:flexmix)

