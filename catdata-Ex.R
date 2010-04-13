pkgname <- "catdata"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
options(pager = "console")
library('catdata')

assign(".oldSearch", search(), pos = 'CheckExEnv')
cleanEx()
nameEx("addiction")
### * addiction

flush(stderr()); flush(stdout())

### Name: addiction
### Title: Are addicted weak-willed, deseased or both?
### Aliases: addiction
### Keywords: datasets

### ** Examples

## Not run: 
##D ##look for:
##D vignette("addiction")
## End(Not run)



cleanEx()
nameEx("aids")
### * aids

flush(stderr()); flush(stdout())

### Name: aids
### Title: AIDS
### Aliases: aids
### Keywords: datasets

### ** Examples

## Not run: 
##D ##look for:
##D vignette("aids")
## End(Not run)



cleanEx()
nameEx("birth")
### * birth

flush(stderr()); flush(stdout())

### Name: birth
### Title: Birth
### Aliases: birth
### Keywords: datasets

### ** Examples

##example of analysis:
# data(birth)
# summary(birth)



cleanEx()
nameEx("catdata-package")
### * catdata-package

flush(stderr()); flush(stdout())

### Name: catdata-package
### Title: Categorical Data
### Aliases: catdata-package catdata
### Keywords: package

### ** Examples

## Not run: 
##D vignette("modbin-dust")
## End(Not run)



cleanEx()
nameEx("children")
### * children

flush(stderr()); flush(stdout())

### Name: children
### Title: Number of Children
### Aliases: children
### Keywords: datasets

### ** Examples

## Not run: 
##D ##example of analysis:
##D vignette(count-children)
## End(Not run)



cleanEx()
nameEx("deathpenalty")
### * deathpenalty

flush(stderr()); flush(stdout())

### Name: deathpenalty
### Title: Death-Penalty
### Aliases: deathpenalty
### Keywords: datasets

### ** Examples

## Not run: 
##D ##look for:
##D vignette("loglinear-deathpenalty")
## End(Not run)



cleanEx()
nameEx("dust")
### * dust

flush(stderr()); flush(stdout())

### Name: dust
### Title: Chronic Bronchial Reaction to Dust
### Aliases: dust
### Keywords: datasets

### ** Examples

## Not run: 
##D ##example of analysis:
##D vignette("modbin-dust")
## End(Not run)



cleanEx()
nameEx("encephalitis")
### * encephalitis

flush(stderr()); flush(stdout())

### Name: encephalitis
### Title: Cases of Herpes Encephalitis in Bavaria and Saxony
### Aliases: encephalitis
### Keywords: datasets

### ** Examples

## Not run: 
##D ##look for:
##D vignette("count-encephalitis")
## End(Not run)



cleanEx()
nameEx("foodstamp")
### * foodstamp

flush(stderr()); flush(stdout())

### Name: foodstamp
### Title: Food-Stamp Program
### Aliases: foodstamp
### Keywords: datasets

### ** Examples

## Not run: 
##D ##look for:
##D vignette("modbin-foodstamp")
## End(Not run)



cleanEx()
nameEx("glass")
### * glass

flush(stderr()); flush(stdout())

### Name: glass
### Title: Glass Identification
### Aliases: glass
### Keywords: datasets

### ** Examples

## Not run: 
##D ##example of analysis:
##D vignette("prediction-glass")
## End(Not run)



cleanEx()
nameEx("heart")
### * heart

flush(stderr()); flush(stdout())

### Name: heart
### Title: Heart Disease
### Aliases: heart
### Keywords: datasets

### ** Examples

##example of analysis:
vignette("regsel-heartdisease1")



cleanEx()
nameEx("insolvency")
### * insolvency

flush(stderr()); flush(stdout())

### Name: insolvency
### Title: Insolvency of companies in Berlin
### Aliases: insolvency
### Keywords: datasets

### ** Examples

## Not run: 
##D ##example of analysis:
##D vignette("count-insolvency")
## End(Not run)



cleanEx()
nameEx("knee")
### * knee

flush(stderr()); flush(stdout())

### Name: knee
### Title: Knee Injuries
### Aliases: knee
### Keywords: datasets

### ** Examples

##example of analysis:
vignette("ordinal-knee1")
vignette("ordinal-knee2")
vignette("multivariate-knee")



cleanEx()
nameEx("kneecumulative")
### * kneecumulative

flush(stderr()); flush(stdout())

### Name: kneecumulative
### Title: Knee Injuries
### Aliases: kneecumulative
### Keywords: datasets

### ** Examples

##example of analysis:
vignette("random-knee2")



cleanEx()
nameEx("kneesequential")
### * kneesequential

flush(stderr()); flush(stdout())

### Name: kneesequential
### Title: Knee Injuries
### Aliases: kneesequential
### Keywords: datasets

### ** Examples

##example of analysis:
vignette("random-knee2")



cleanEx()
nameEx("leukoplakia")
### * leukoplakia

flush(stderr()); flush(stdout())

### Name: leukoplakia
### Title: Leukoplakia
### Aliases: leukoplakia
### Keywords: datasets

### ** Examples

## Not run: 
##D ##look for:
##D vignette("loglinear-leukoplakia")
## End(Not run)



cleanEx()
nameEx("medcare")
### * medcare

flush(stderr()); flush(stdout())

### Name: medcare
### Title: Number of Physician Office Visits
### Aliases: medcare
### Keywords: datasets

### ** Examples

## Not run: 
##D ##example of analysis:
##D vignette("count-medcare")
## End(Not run)



cleanEx()
nameEx("reader")
### * reader

flush(stderr()); flush(stdout())

### Name: reader
### Title: Who is a Regular Reader?
### Aliases: reader
### Keywords: datasets

### ** Examples

## Not run: 
##D ##look for:
##D vignette("loglinear-reader")
## End(Not run)



cleanEx()
nameEx("rent")
### * rent

flush(stderr()); flush(stdout())

### Name: rent
### Title: Rent in Munich
### Aliases: rent
### Keywords: datasets

### ** Examples

##example of analysis:
data(rent)
summary(rent)



cleanEx()
nameEx("retinopathy")
### * retinopathy

flush(stderr()); flush(stdout())

### Name: retinopathy
### Title: Retinopathy
### Aliases: retinopathy
### Keywords: datasets

### ** Examples

##example of analysis:
vignette("ordinal-retinopathy1")
vignette("ordinal-retinopathy2")



cleanEx()
nameEx("teratology")
### * teratology

flush(stderr()); flush(stdout())

### Name: teratology
### Title: Teratology
### Aliases: teratology
### Keywords: datasets

### ** Examples

data(teratology)
summary(teratology)
## Not run: 
##D #vignette("altbin-teratology")
## End(Not run)



cleanEx()
nameEx("teratology2")
### * teratology2

flush(stderr()); flush(stdout())

### Name: teratology2
### Title: Teratology2
### Aliases: teratology2
### Keywords: datasets

### ** Examples

## Not run: 
##D #data(teratology2)
## End(Not run)



cleanEx()
nameEx("unemployment")
### * unemployment

flush(stderr()); flush(stdout())

### Name: unemployment
### Title: long term/short term unemployment
### Aliases: unemployment
### Keywords: datasets

### ** Examples

## Not run: 
##D ##look for:
##D vignette("unemployment")
## End(Not run)



cleanEx()
nameEx("vaso")
### * vaso

flush(stderr()); flush(stdout())

### Name: vaso
### Title: Vasoconstriciton and Breathing
### Aliases: vaso
### Keywords: datasets

### ** Examples

## Not run: 
##D ##look for:
##D vignette("binary-vaso")
##D vignette("modbin-vaso")
## End(Not run)



### * <FOOTER>
###
cat("Time elapsed: ", proc.time() - get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
