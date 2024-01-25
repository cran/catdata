## ----include=FALSE------------------------------------------------------------
library(knitr)
opts_chunk$set(
concordance=TRUE
)

## ----echo=FALSE-------------------------------------------
options(width=60)
rm(list=ls(all=TRUE))

## ----results='hide'---------------------------------------
library(catdata)
data(retinopathy)
retinopathy$SM <- as.factor(retinopathy$SM)

## ---------------------------------------------------------
library(VGAM)
# retinopathy$RET <- as.ordered(retinopathy$RET)
# retinopathy$SM <- as.factor(retinopathy$SM)

## ----results='hide'---------------------------------------
pom <- vglm(RET ~ SM + DIAB + GH + BP, family = cumulative(parallel=TRUE), 
            data = retinopathy)

## ----results='hide'---------------------------------------
ppom <- vglm(RET ~ SM + DIAB + GH + BP, family = cumulative(parallel=FALSE), 
             data = retinopathy)

## ---------------------------------------------------------
deviance(pom)

## ---------------------------------------------------------
deviance(ppom)

## ---------------------------------------------------------
1 - pchisq(deviance(pom) - deviance(ppom), df=4)

## ---------------------------------------------------------
summary(pom)

## ---------------------------------------------------------
summary(ppom)

## ---------------------------------------------------------
ppom2 <- vglm (RET ~ SM + DIAB + GH + BP,
family = cumulative (parallel = FALSE ~ SM + DIAB + GH), data = retinopathy)
deviance(ppom2)

## ---------------------------------------------------------
1-pchisq(deviance(ppom2)-deviance(ppom), df=1)

## ---------------------------------------------------------
ppom3 <- vglm (RET ~ SM + DIAB + GH + BP, 
family = cumulative (parallel = FALSE ~ SM + DIAB), data = retinopathy)
deviance(ppom3)

## ---------------------------------------------------------
1-pchisq(deviance(ppom3)-deviance(ppom2), df=1)

## ---------------------------------------------------------
ppom4 <- vglm (RET ~ SM + DIAB + GH + BP, 
family = cumulative (parallel = FALSE ~ SM), data = retinopathy)
deviance(ppom4)

## ---------------------------------------------------------
1-pchisq(deviance(ppom4)-deviance(ppom3), df=1)

## ---------------------------------------------------------
1-pchisq(deviance(pom)-deviance(ppom4), df=1)

## ----echo=FALSE-------------------------------------------
detach(package:VGAM)

