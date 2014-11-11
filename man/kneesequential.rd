\name{kneesequential}
\alias{kneesequential}
\docType{data}
\encoding{UTF-8}
\title{Knee Injuries}
\description{
In a clinical study n=127 patients with sport related injuries have been treated
with two different therapies (chosen by random design).
After 3,7 and 10 days of treatment the pain occuring during knee movement was observed.
The data set is a transformed version of knee for fitting a sequential logit model.
}
\usage{data(knee)}
\format{
  A data frame with 127 observations on the following 8 variables.
  \describe{
    \item{\code{y}}{Response}
    \item{\code{Icept1}}{Intercept 1}
    \item{\code{Icept2}}{Intercept 2}
    \item{\code{Icept3}}{Intercept 3}
    \item{\code{Icept4}}{Intercept 4}
    \item{\code{Th}}{Therapy ( placebo = 1, treatment = 2)}
    \item{\code{Age}}{Age in years}
    \item{\code{Age2}}{Squared age}
    \item{\code{Sex}}{Gender (male = 0, female = 1)}
    \item{\code{Person}}{Person}
  }
}
\examples{
##example of analysis:
vignette("random-knee2")
}
\keyword{datasets}
