\name{heart}
\alias{heart}
\docType{data}
\encoding{UTF-8}
\title{Heart Disease}
\description{
A retrospective sample of males in a heart-disease high-risk region of the Western Cape, South
Africa.
}
\usage{data(heart)}
\format{
  A data frame with 462 observations on the following 10 variables.
  \describe{
    \item{\code{y}}{coronary heart disease (yes = 1, no = 0)}
    \item{\code{sbp}}{systolic blood pressure}
    \item{\code{tobacco}}{cumulative tobacco} 
    \item{\code{ldl}}{low density lipoprotein cholesterol}
    \item{\code{adiposity}}{adiposity}
    \item{\code{famhist}}{family history of heart disease}
    \item{\code{typea}}{type-A behavior}
    \item{\code{obesity}}{obesity}
    \item{\code{alcohol}}{current alcohol consumption}
    \item{\code{age}}{age at onset}
  }
}
\references{South African Heart Disease dataset \cr 
Hastie, T., Tibshirani, R., and Friedman, J. (2001):\cr
Elements of Statistical Learning; Data Mining, Inference, and Prediction, Springer-Verlag, New York}
\examples{
##example of analysis:
if(interactive()){vignette("regsel-heartdisease1")}
if(interactive()){vignette("regsel-heartdisease2")}
if(interactive()){vignette("regsel-heartdisease3")}
if(interactive()){vignette("regsel-heartdisease4")}
if(interactive()){vignette("regsel-heartdisease5")}
if(interactive()){vignette("regsel-heartdisease6")}
}
\keyword{datasets}
